SET mapred.job.queue.name=root.haddeveloper;

-----------------------------table 1 -------------------------

create table man_vehicles_g as SELECT count(DISTINCT a.vin_17_cd) AS tot_vehicles,

	   a.mdl_seris_cd,

	   a.mdl_seris_desc,

	   RTRIM(z.component_part_no) AS Part_number,

	   RTRIM(coalesce(d.description,c.part_desc,'Not Avaliable')) AS description,

	   e.creation_date,

	   sum(z.component_qty) AS bom_quantity,

	   count(*) AS part_count,

	   d.inventory_item_status_code AS part_status,

	   d.part_typ_cd,

	   d.sos_code,

	   d.initial_program_id

FROM teradata.tors01_job a

INNER JOIN teradata.vehp91_bom2 b ON rtrim(b.vin_17_cd) = rtrim(a.vin_17_cd)

INNER JOIN

  (SELECT DISTINCT assembly_part_no,

				   component_part_no,

				   cast(component_qty AS float) AS component_qty

   FROM oracle_rdb.npsu_pbom_sbom) z ON rtrim(z.assembly_part_no) = rtrim(b.mfg_prtnr_part_no)

LEFT OUTER JOIN cdms.part c ON rtrim(c.part_no) = rtrim(z.component_part_no)

LEFT OUTER JOIN oracle.pim_all_single_row_attributes d ON rtrim(d.navistar_part_no) = rtrim(z.component_part_no)

AND d.organization_id=85

LEFT OUTER JOIN oracle.mtl_system_items_b e ON rtrim(e.segment1) = rtrim(z.component_part_no)

AND e.organization_id=85

WHERE RTRIM(A.VIN_17_CD) IN('1HTEUMMP5KH287108')

GROUP BY a.mdl_seris_cd,

		 a.mdl_seris_desc,

		 RTRIM(z.component_part_no),

		 RTRIM(coalesce(d.description,c.part_desc,'Not Avaliable')),

		 e.creation_date,

		 d.inventory_item_status_code,

		 d.part_typ_cd,

		 d.sos_code,

		 d.initial_program_id;
		 
-----------------------------table2 -------------------------

create table teradata.man_partner_g as SELECT count(DISTINCT a.vin_17_cd) AS tot_vehicles,

	   a.mdl_seris_cd,

	   a.mdl_seris_desc,

	   RTRIM(b.mfg_prtnr_part_no) AS Part_number,

	   RTRIM(coalesce(d.description,c.part_desc,'Not Avaliable')) AS description,

	   e.creation_date,

	   sum(b.part_bom_qty) AS bom_quantity,

	   count(*) AS part_count,

	   d.inventory_item_status_code AS part_status,

	   d.part_typ_cd,

	   d.sos_code,

	   d.initial_program_id

FROM teradata.tors01_job a

INNER JOIN teradata.vehp91_bom2 b ON rtrim(b.vin_17_cd) = rtrim(a.vin_17_cd)

LEFT OUTER JOIN cdms.part c ON rtrim(c.part_no) = rtrim(b.mfg_prtnr_part_no)

LEFT OUTER JOIN oracle.pim_all_single_row_attributes d ON rtrim(d.navistar_part_no) = rtrim(b.mfg_prtnr_part_no)

AND d.organization_id=85

LEFT OUTER JOIN oracle.mtl_system_items_b e ON rtrim(e.segment1) = rtrim(b.mfg_prtnr_part_no)

AND e.organization_id=85

WHERE RTRIM(A.VIN_17_CD) IN('1HTEUMMP5KH287108')

GROUP BY a.mdl_seris_cd,

		 a.mdl_seris_desc,

		 RTRIM(b.mfg_prtnr_part_no),

		 RTRIM(coalesce(d.description,c.part_desc,'Not Avaliable')),

		 e.creation_date,

		 d.inventory_item_status_code,

		 d.part_typ_cd,

		 d.sos_code,

		 d.initial_program_id;		 
 
-------------------------------------- table3 -------------------------------
 
create table as teradata.man_inventory_zzz as SELECT pg.*,

	isnull(f.current_inventory) AS current_inventory,

	isnull(f.rip) AS rip,

	isnull(f.intransit) AS intransit,

	isnull(f.hold) AS HOLD,

	(f.current_inventory + f.rip + f.intransit + f.hold) AS total_available,

	isnull(h.twelve_month_warr_vol) AS twelve_month_war_vol,

	isnull(i.DNET) AS DNET,

	isnull(I.CONTRACT_COST) AS CONTRACT_COST,

	isnull(I.STANDARD_COST) AS STANDARD_COST,

	isnull(I.DS_COST) AS DS_COST

FROM

man_partner_g pg

LEFT OUTER JOIN

(SELECT t_prdid AS PRODUCT,

	   SUM(CAST(l_ohaqty AS FLOAT)) AS CURRENT_INVENTORY,

	   SUM(CAST(l_ripqty AS FLOAT)) AS RIP,

	   SUM(CAST(l_intqty AS FLOAT)) AS INTRANSIT,

	   SUM(CAST(l_hldqty AS FLOAT)) AS HOLD

FROM tolas.stock_impala

GROUP BY t_prdid) f ON rtrim(f.product) = rtrim(g.Part_number)

LEFT OUTER JOIN part_analysis.pros_report_12_month_warranty h ON rtrim(h.part_25_no) = rtrim(g.Part_number)

LEFT OUTER JOIN

(SELECT product,

	   max(dlr_net_price) AS DNET,

	   MAX(isnull(contract_cost)) AS CONTRACT_COST,

	   MAX(isnull(standard_cost)) AS STANDARD_COST,

	   MAX(isnull(direct_ship_cost)) AS DS_COST

FROM part_analysis.nv_pricing_analysis

WHERE customer_type='DL'

  AND end_date = '9999-12-31'

GROUP BY product) i ON rtrim(i.product) = rtrim(g.Part_number)

UNION ALL SELECT vg.*,

			  isnull(f.current_inventory) AS current_inventory,

			  isnull(f.rip) AS rip,

			  isnull(f.intransit) AS intransit,

			  isnull(f.hold) AS HOLD,

			  (f.current_inventory + f.rip + f.intransit + f.hold) AS total_available,

			  isnull(h.twelve_month_warr_vol) AS twelve_month_war_vol,

			  isnull(i.DNET) AS DNET,

			  isnull(I.CONTRACT_COST) AS CONTRACT_COST,

			  isnull(I.STANDARD_COST) AS STANDARD_COST,

			  isnull(I.DS_COST) AS DS_COST

FROM man_vehicles_g vg

LEFT OUTER JOIN

(SELECT t_prdid AS PRODUCT,

	   SUM(CAST(l_ohaqty AS FLOAT)) AS CURRENT_INVENTORY,

	   SUM(CAST(l_ripqty AS FLOAT)) AS RIP,

	   SUM(CAST(l_intqty AS FLOAT)) AS INTRANSIT,

	   SUM(CAST(l_hldqty AS FLOAT)) AS HOLD

FROM tolas.stock_impala

GROUP BY t_prdid) f ON rtrim(f.product) = rtrim(g.Part_number)

LEFT OUTER JOIN part_analysis.pros_report_12_month_warranty h ON rtrim(h.part_25_no) = rtrim(g.Part_number)

LEFT OUTER JOIN

(SELECT product,

	   max(dlr_net_price) AS DNET,

	   MAX(isnull(contract_cost)) AS CONTRACT_COST,

	   MAX(isnull(standard_cost)) AS STANDARD_COST,

	   MAX(isnull(direct_ship_cost)) AS DS_COST

FROM part_analysis.nv_pricing_analysis

WHERE customer_type='DL'

  AND COUNTRY='US'

  AND end_date = '9999-12-31'

GROUP BY product) i ON rtrim(i.product) = rtrim(g.Part_number);

------------------------------------------ table 4 --------------------------------

create table teradata.man_vehicles_zps as SELECT sum(ZZZ.tot_vehicles) AS tot_vehicles,

	 ltrim(ZZZ.mdl_seris_cd) AS mdl_seris_cd,

	 ZZZ.mdl_seris_desc,

	 rtrim(ZZZ.part_number) AS part_number,

	 rtrim(ZZZ.description) AS description,

	 coalesce(na.creation_date,ZZZ.creation_date,cast(current_timestamp() as string)) AS creation_date,

	 SUM(ZZZ.bom_quantity) AS BOM_QUANTITY,

	 SUM(ZZZ.part_count) AS PART_COUNT,

	 ZZZ.part_status,

	 ZZZ.part_typ_cd,

	 ZZZ.sos_code,

	 ZZZ.initial_program_id,

	 ZZZ.current_inventory,

	 ZZZ.rip,

	 ZZZ.intransit,

	 ZZZ.hold,

	 ZZZ.total_available,

	 ZZZ.dnet,

	 ZZZ.contract_cost,

	 ZZZ.standard_cost,

	 ZZZ.ds_cost,

	 ZZZ.twelve_month_war_vol

FROM man_inventory_zzz zzz

LEFT OUTER JOIN oracle.nvpim_item_status_hist na ON rtrim(na.item_number) = rtrim(zzz.part_number)

GROUP BY ZZZ.mdl_seris_cd,

	   ZZZ.mdl_seris_desc,

	   rtrim(ZZZ.part_number),

	   rtrim(ZZZ.description),

	   coalesce(na.creation_date,ZZZ.creation_date,cast(current_timestamp() as string)),

	   ZZZ.part_status,

	   ZZZ.part_typ_cd,

	   ZZZ.sos_code,

	   ZZZ.initial_program_id,

	   ZZZ.current_inventory,

	   ZZZ.rip,

	   ZZZ.intransit,

	   ZZZ.hold,

	   ZZZ.total_available,

	   ZZZ.twelve_month_war_vol,

	   ZZZ.dnet,

	   ZZZ.contract_cost,

	   ZZZ.standard_cost,

	   ZZZ.ds_cost;

-----------------------------table 5	------------------ 
	   
create table teradata.man_vendor_a as SELECT zps.*,

	  isnull(ps.vendor_id) AS vendor_id,

	  isnull(ps.vendor_name) AS vendor_name,

	  isnull(pv.twelve_month_vol) AS 12_month_vol,

	  isnull(ss.twelve_month_vol) AS 12_month_supersession_vol,

	  isnull(po.po_qty) AS open_po_count,

	  isnull(sls.sls_set_qty) AS sls_set_qty,

	  isnull(op.tot_forecast) AS tot_forecast

FROM  man_vehicles_zps zps

LEFT OUTER JOIN part_analysis.pros_report_ps_contract_vendor ps ON rtrim(ps.inv_item_id) = rtrim(zps.part_number)

LEFT OUTER JOIN

 (SELECT product AS part_number,

		 sum(twelve_month_vol) AS twelve_month_vol

  FROM part_analysis.pros_report_12_month_vol_ct

  WHERE customer_type='DL'

  GROUP BY product) pv ON rtrim(pv.part_number) = rtrim(zps.part_number)

LEFT OUTER JOIN

 (SELECT final_part AS part_number,

		 sum(final_vol) AS twelve_month_vol

  FROM part_analysis.pros_rpt_total_demand_2

  WHERE final_customer_type='DL'

  GROUP BY final_part) ss ON rtrim(ss.part_number) = rtrim(zps.part_number)

LEFT OUTER JOIN

 (SELECT part_number,

		 SUM(po_qty) AS po_qty

  FROM oracle.apsr_open_pos_mv a

  INNER JOIN parts_supply_chain.ah_potypes b ON rtrim(b.po_type)=rtrim(a.po_type)

  GROUP BY part_number) po ON rtrim(po.part_number) = rtrim(zps.part_number)

LEFT OUTER JOIN

 (SELECT nav_pn,

		 sls_set_qty

  FROM parts_supply_chain.tolas_stkrel

  WHERE sls_set_qty >1 ) sls ON rtrim(sls.nav_pn) = rtrim(zps.part_number)

LEFT OUTER JOIN

 (SELECT item,

		 sum(cast(wk01 AS float) +cast(wk02 AS float) +cast(wk03 AS float) +cast(wk04 AS float) +cast(wk05 AS float) +cast(wk06 AS float) +cast(wk07 AS float) +cast(wk08 AS float) +cast(wk09 AS float) +cast(wk10 AS float) +cast(wk11 AS float) +cast(wk12 AS float) +cast(mth4 AS float) +cast(mth5 AS float) +cast(mth6 AS float)) AS tot_forecast

  FROM heatmappoc.tbl_nav830_hist a

  INNER JOIN

	(SELECT max(cast(updated AS TIMESTAMP)) AS mx_up

	 FROM heatmappoc.tbl_nav830_hist) b ON b.mx_up = cast(a.updated AS TIMESTAMP)

  GROUP BY item) op ON rtrim(op.item) = rtrim(zps.part_number);

-----------------------table 5 end ---------------------  
	   
SELECT a.*,

       isnull(g.nav_pn) AS repl_part_number,

       isnull(d.description) AS repl_description,

       coalesce(na.creation_date,e.creation_date,cast(current_timestamp() as string)) AS repl_creation_date,

       isnull(d.sos_code) AS repl_sos_code,

       isnull(d.initial_program_id) AS repl_initial_program_id,

       isnull(f.current_inventory) AS repl_current_inventory,

       isnull(f.rip) AS repl_rip,

       isnull(f.intransit) AS repl_intransit,

       isnull(f.hold) AS repl_hold,

       (f.current_inventory + f.rip + f.intransit + f.hold) AS repl_total_available,

       isnull(i.DNET) AS repl_dnet,

       isnull(I.CONTRACT_COST) AS repl_contract_cost,

       isnull(I.STANDARD_COST) AS repl_standard_cost,

       isnull(I.DS_COST) AS repl_ds_cost,

       isnull(h.twelve_month_warr_vol) AS repl_twelve_month_war_vol,

       isnull(ps.vendor_id) AS repl_vendor_id,

       isnull(ps.vendor_name) AS repl_vendor_name,

       isnull(pv.twelve_month_vol) AS repl_12_month_vol,

       isnull(ss.twelve_month_vol) AS repl_12_month_supersession_vol,

       isnull(po.po_qty) AS repl_open_po_count,

       isnull(sls.sls_set_qty) AS repl_sls_set_qty,

       isnull(op.tot_forecast) AS repl_tot_forecast

FROM  man_vendor_a a

LEFT OUTER JOIN parts_supply_chain.npsu_minixref g ON rtrim(oldnav)= rtrim(a.part_number)

LEFT OUTER JOIN oracle.pim_all_single_row_attributes d ON rtrim(d.navistar_part_no) = rtrim(g.nav_pn) AND d.organization_id=85

LEFT OUTER JOIN oracle.mtl_system_items_b e ON rtrim(e.segment1) = rtrim(g.nav_pn) AND e.organization_id=85

LEFT OUTER JOIN

  (SELECT t_prdid AS PRODUCT,

          sum(CASE

                  WHEN ltrim(rtrim(l_ohaqty)) <> '' THEN CAST(l_ohaqty AS FLOAT)

                  ELSE 0

              END) AS current_inventory,

          sum(CASE

                  WHEN ltrim(rtrim(l_ripqty)) <> '' THEN CAST(l_ripqty AS FLOAT)

                  ELSE 0

              END) AS rip,

          sum(CASE

                  WHEN ltrim(rtrim(l_intqty)) <> '' THEN CAST(l_intqty AS FLOAT)

                  ELSE 0

              END) AS intransit,

          sum(CASE

                  WHEN ltrim(rtrim(l_hldqty)) <> '' THEN CAST(l_hldqty AS FLOAT)

                  ELSE 0

              END) AS HOLD

   FROM tolas.stock_impala

   GROUP BY t_prdid) f ON rtrim(f.product) = rtrim(g.nav_pn)

LEFT OUTER JOIN part_analysis.pros_report_12_month_warranty h ON rtrim(h.part_25_no) = rtrim(g.nav_pn)

LEFT OUTER JOIN

  (SELECT product,

          max(dlr_net_price) AS DNET,

          MAX(isnull(contract_cost)) AS CONTRACT_COST,

          MAX(isnull(standard_cost)) AS STANDARD_COST,

          MAX(isnull(direct_ship_cost)) AS DS_COST

   FROM part_analysis.nv_pricing_analysis

   WHERE customer_type='DL'

     AND end_date = '9999-12-31'

   GROUP BY product) i ON rtrim(i.product) = rtrim(g.nav_pn)

LEFT OUTER JOIN oracle.nvpim_item_status_hist na ON rtrim(na.item_number) = rtrim(g.nav_pn)

LEFT OUTER JOIN part_analysis.pros_report_ps_contract_vendor ps ON rtrim(ps.inv_item_id) = rtrim(g.nav_pn)

LEFT OUTER JOIN

  (SELECT product AS part_number,

          sum(twelve_month_vol) AS twelve_month_vol

   FROM part_analysis.pros_report_12_month_vol_ct

   WHERE customer_type='DL'

   GROUP BY product) pv ON rtrim(pv.part_number) = rtrim(g.nav_pn)

LEFT OUTER JOIN

  (SELECT final_part AS part_number,

          sum(final_vol) AS twelve_month_vol

   FROM part_analysis.pros_rpt_total_demand_2

   WHERE final_customer_type='DL'

   GROUP BY final_part) ss ON rtrim(ss.part_number) = rtrim(g.nav_pn)

LEFT OUTER JOIN

  (SELECT part_number,

          SUM(po_qty) AS po_qty

   FROM oracle.apsr_open_pos_mv a

   INNER JOIN parts_supply_chain.ah_potypes b ON rtrim(b.po_type)=rtrim(a.po_type)

   GROUP BY part_number) po ON rtrim(po.part_number) = rtrim(g.nav_pn)

LEFT OUTER JOIN

  (SELECT nav_pn,

          sls_set_qty

   FROM parts_supply_chain.tolas_stkrel

   WHERE sls_set_qty >1 ) sls ON rtrim(sls.nav_pn) = rtrim(g.nav_pn)

LEFT OUTER JOIN

  (SELECT item,

          sum(cast(wk01 AS float) +cast(wk02 AS float) +cast(wk03 AS float) +cast(wk04 AS float) +cast(wk05 AS float) +cast(wk06 AS float) +cast(wk07 AS float) +cast(wk08 AS float) +cast(wk09 AS float) +cast(wk10 AS float) +cast(wk11 AS float) +cast(wk12 AS float) +cast(mth4 AS float) +cast(mth5 AS float) +cast(mth6 AS float)) AS tot_forecast

   FROM heatmappoc.tbl_nav830_hist a

   INNER JOIN

     (SELECT max(cast(updated AS TIMESTAMP)) AS mx_up

      FROM heatmappoc.tbl_nav830_hist) b ON b.mx_up = cast(a.updated AS TIMESTAMP)

   GROUP BY item) op ON rtrim(op.item) = rtrim(g.nav_pn)