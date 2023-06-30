--INSERT PRESTACION_ECONOMICA;

insert into PRESTACION_ECONOMICA VALUES (1,'LAC','LACTANCIA',820);
insert into PRESTACION_ECONOMICA VALUES (2,'MAT','MATERNIODAD',NULL);
insert into PRESTACION_ECONOMICA VALUES (3,'SEP','SEPELIO',2007);
insert into PRESTACION_ECONOMICA VALUES (4,'ICT','INCAPACIDAD_TEMPOSRAL',NULL);


-- INSERT REQUISITO

INSERT INTO REQUISITO VALUES (1,'LAC','Formulario 1040, debidamente llenado y firmado.','O');
INSERT INTO REQUISITO VALUES (2,'LAC','Documento de identidad original.','O');
INSERT INTO REQUISITO VALUES (3,'MAT','Formulario 1040, debidamente llenado y firmado.','O');
INSERT INTO REQUISITO VALUES (4,'MAT','Contar con Certificado de Incapacidad Temporal para el Trabajo (CITT) que sustenten los (98) días de goce del descanso por alumbramiento.','O');
INSERT INTO REQUISITO VALUES (5,'SEP','Formulario 1040, debidamente llenado y firmado por el beneficiario.','O');
INSERT INTO REQUISITO VALUES (6,'SEP','Comprobantes de pago originales por los gastos funerarios, haciendo referencia al nombre del asegurado fallecido y emitidos a nombre del familiar o tercero que realiza el gasto.','O');
INSERT INTO REQUISITO VALUES (7,'SEP','En los Comprobantes de Pagos se debe colocar el sello que indica “Comprobante de Pago para Uso Exclusivo por EsSalud”.','O');
INSERT INTO REQUISITO VALUES (8,'SEP','Si el gasto es asumido por un tercero, debe contar con la Declaración Jurada del familiar que reconoció el gasto hecho por el tercero','O');
INSERT INTO REQUISITO VALUES (9,'ICT','Formulario 1040, debidamente llenado y firmado.','O');
INSERT INTO REQUISITO VALUES (10,'ICT','Contar con el Certificado de Incapacidad Temporal para el Trabajo (CITT) otorgado al trabajador.','O');
INSERT INTO REQUISITO VALUES (11,'ICT','Llenado de datos en el formulario de los certificados médicos particulares por los veinte (20) primeros días de incapacidad','O');
INSERT INTO REQUISITO VALUES (12,'ICT','Mostrar documento de identidad del asegurado(a)','O');


-- INSERT CONDICION


INSERT INTO CONDICION VALUES (1,'LAC','Contar con tres (03) meses de aportacion consecutivos o cuatro (04) no consecutivos dentro de los seis (06) meses calendarios anteriores al mes en que se inició la contingencia.','O');
INSERT INTO CONDICION VALUES (2,'LAC','Contar con vínculo laboral al momento de la contingencia (nacimiento).','O');
INSERT INTO CONDICION VALUES (3,'LAC','El lactante debe estar inscrito como derechohabiente del asegurado titular.','O');
INSERT INTO CONDICION VALUES (4,'LAC','Si la madre del lactante no es asegurada titular, debera estar inscrita en EsSalud.','O');
INSERT INTO CONDICION VALUES (5,'MAT','Contar con tres (03) meses de aportación consecutivos o cuatro (04) no consecutivos dentro de los seis (06) meses calendarios anteriores al mes en que se inició la contingencia.','O');
INSERT INTO CONDICION VALUES (6,'MAT','La asegurada regular debe tener vínculo laboral en el momento del goce de la prestacion (al inicio y durante el periodo de subsidio)','O');
INSERT INTO CONDICION VALUES (7,'MAT','La asegurada regular debe haber tenido vínculo laboral en el mes de la concepciOn.','O');
INSERT INTO CONDICION VALUES (8,'MAT','La asegurada de régimen especial y la pescadora y procesadora pesquera artesanal independiente deben haber pagado el aporte del mes de la concepción antes de presentar la solicitud.','O');
INSERT INTO CONDICION VALUES (9,'SEP','El asegurado regular titular debe contar con tres (03) meses consecutivos de aportaciones o cuatro (04) no consecutivos dentro de los seis (06) meses calendario anteriores al mes en que ocurrió su fallecimiento.','O');
INSERT INTO CONDICION VALUES (10,'SEP','El trabajador debe tener vínculo laboral en el momento del fallecimiento.','O');
INSERT INTO CONDICION VALUES (11,'SEP','Pensionistas: Mantener su condición de pensionistas al momento de la contingencia.','O');
INSERT INTO CONDICION VALUES (12,'ICT','El asegurado regular debe contar con tres (03) meses de aportación consecutivos o cuatro (04) no consecutivos dentro de los seis (06) meses anteriores al mes en que se inició la incapacidad.','O');
INSERT INTO CONDICION VALUES (13,'ICT','El trabajador debe tener vínculo laboral en el momento del goce de la prestación (al inicio y durante el periodo a subsidiar)','O');
INSERT INTO CONDICION VALUES (14,'ICT','En caso de accidente, basta que exista afiliación.','O');


