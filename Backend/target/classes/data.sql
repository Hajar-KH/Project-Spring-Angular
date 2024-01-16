insert into admins(username, password,enabled) values ("admin","123",true)
insert into admins(username, password,enabled) values ("assistant","12345",true)

insert into authorities(username, authority) values ("admin","ROLE_ADMIN")
insert into authorities(username, authority) values ("assistant","ROLE_ASSISTANT")

