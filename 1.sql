create table world.bookstore(isbn int,title varchar(50)bookstore,author varchar(50));

insert into  world.bookstore values(001,"harry potter",null);
insert into  world.bookstore values(001,null,"jk rowling");
insert into  world.bookstore values(002,"lord of the rings",null);
insert into  world.bookstore values(002,null,"jrr tolkien");
insert into  world.bookstore values(003,"good omens",null);
insert into  world.bookstore values(003,null,"neil gaiman");
insert into  world.bookstore values(003,null,"terry pratchet");
insert into  world.bookstore values(004,"welcome to night vale",null);
insert into  world.bookstore values(004,null,"joseph fink");
insert into  world.bookstore values(004,null,"jeffrey cranor");

select * from world.bookstore;

select b1.isbn,coalesce(b1.title,b2.title) as title,coalesce(b1.author,b2.author) as author 
from  world.bookstore b1,  world.bookstore b2 
where b1.isbn = b2.isbn and b1.title is not null and b2.author is not null
/*
def smaller(arr):
    ans = []
    count = 0

    for i in range(len(arr)):
        for j in range(i, len(arr)):
            if arr[j] < arr[i]:
                count += 1
        ans.append(count)
        count = 0

    return ans
*/
