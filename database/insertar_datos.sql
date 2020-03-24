insert into usuario (usr,pass,nombre,apellido) values ('usr','usr','juan','mortal');

create or replace function validar_usuario(usrr varchar, passs varchar) returns boolean as $$
declare
bandera boolean;
begin	
	if not exists (select usr from usuario where usr like usrr and pass like pass) then
		bandera = false;
	else
		bandera = true;
	end if;	
	
	return bandera;
end;
$$ language plpgsql

select validar_usuario('usr','usr');




