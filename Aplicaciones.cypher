CREATE CONSTRAINT ON (a:Aplicacion) ASSERT a.nombre IS UNIQUE;
CREATE CONSTRAINT ON (a:Aplicacion) ASSERT a.exists(p.nombre)
CREATE CONSTRAINT ON (a:Aplicacion) ASSERT a.exists(p.tipo)
CREATE CONSTRAINT ON (a:Aplicacion) ASSERT a.exists(p.ambiente)

CREATE CONSTRAINT ON (p:ProgServidor) ASSERT exists(p.nombre)
CREATE CONSTRAINT ON (p:ProgServidor) ASSERT exists(p.tipo)
CREATE CONSTRAINT ON (p:ProgServidor) ASSERT exists(p.ambiente)

CREATE CONSTRAINT ON (p:ProgServicio) ASSERT exists(p.nombre)
CREATE CONSTRAINT ON (p:ProgServicio) ASSERT exists(p.tipo)
CREATE CONSTRAINT ON (p:ProgServicio) ASSERT exists(p.ambiente)

CREATE CONSTRAINT ON (p:FileAdabas) ASSERT exists(p.nombre)
CREATE CONSTRAINT ON (p:FileAdabas) ASSERT exists(p.tipo)
CREATE CONSTRAINT ON (p:FileAdabas) ASSERT exists(p.ambiente)


CREATE (a:Aplicacion { nombre:"TU Api", tipo:"Api Rest", ambiente: "Windows", tecnologia: "NET 6", servidor: "sws21cc0001", equipo: "Integracion"});
CREATE (a:Aplicacion { nombre:"CU WS", tipo:"WebService Soap", ambiente: "Windows", tecnologia: "Net Framework 4.8", servidor: "sws22cc0001", equipo: "Clientes"});
CREATE (a:Aplicacion { nombre:"PZ Web", tipo:"Api Rest", ambiente: "Windows", tecnologia: "Net Framework 4.5", servidor: "sws21cc0001", equipo: "Integracion"});
CREATE (a:Aplicacion { nombre:"Consola PZ Web", tipo:"t", ambiente: "Windows", tecnologia: "Net Framework 4.5", "Integracion"});
CREATE (a:Aplicacion { nombre:"HCS", tipo:"Servicio Comunicacion", ambiente: "Windows", tecnologia: "NET 4.8", servidor: "sap49cc0001", equipo: "Arquitectura"});
CREATE (a:Aplicacion { nombre:"PZ IIBUS", tipo:"WebService Soap", ambiente: "Linux", tecnologia: "IIBUS", equipo: "Publicacion de Servicios"});
CREATE (a:Aplicacion { nombre:"FU Feriados", tipo:"WebService Soap", ambiente: "Windows", tecnologia: "NET Framework 4.8", servidor: "sap50cc0001", equipo: "Integracion"});
CREATE (a:Aplicacion { nombre:"CPD Api", tipo:"Api Rest", ambiente: "Windows", tecnologia: "NET Framework 4.8", servidor: "sap50cc0001",  equipo: "Integracion"});
CREATE (a:Aplicacion { nombre:"CPD Front", tipo:"Front End React", ambiente: "Windows", tecnologia: "NET Framework 4.8", servidor: "sap50cc0001", equipo: "Integracion"});


CREATE (P:ProgServidor { nombre:"TU", tipo:"Handler", ambiente: "HOST", tecnologia: "Natural"});
CREATE (P:ProgServidor { nombre:"FU", tipo:"Servidor", ambiente: "HOST", tecnologia: "Assembler"});
CREATE (P:ProgServidor { nombre:"PZ", tipo:"Servidor", ambiente: "HOST", tecnologia: "Natural"});

CREATE (P:ProgServicio { nombre:"TU TRX 0001", tipo:"transaccion", ambiente: "HOST", tecnologia: "Natural", descripcion: "Devuelve la estrucutra de campos de una tablas TU"});
CREATE (P:ProgServicio { nombre:"TU TRX 0002", tipo:"transaccion", ambiente: "HOST", tecnologia: "Natural", descripcion: "Devuelve el contenido de una tablas TU"});

CREATE (P:FileAdabas { nombre:"TU0002", tipo:"Tipo1", ambiente: "HOST"});
