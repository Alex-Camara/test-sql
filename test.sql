
# Volcado de tabla adm_activo_fijo
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_activo_fijo` (
  `idactivo_fijo` int NOT NULL AUTO_INCREMENT,
  `no_serie` varchar(45) DEFAULT NULL,
  `descripcion` tinytext,
  `idubicacion` int NOT NULL,
  `iddepartamento` int NOT NULL,
  `responsable` int NOT NULL,
  `costo` decimal(11,2) DEFAULT NULL,
  `fecha_ingreso` varchar(10) DEFAULT NULL,
  `idempresa` int NOT NULL,
  `idzona` int NOT NULL,
  `idgastocontabletiposmaterial` int NOT NULL,
  `qr` varchar(45) DEFAULT NULL,
  `qr_cad` text,
  `entry_by` varchar(45) DEFAULT NULL,
  `estado` int NOT NULL,
  `observaciones` text,
  `cantidad` int DEFAULT NULL,
  `ok` tinyint(1) NOT NULL,
  PRIMARY KEY (`idactivo_fijo`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_activo_fijo_comm
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_activo_fijo_comm` (
  `idactivo_fijo_comm` int NOT NULL AUTO_INCREMENT,
  `idactivo_fijo` int NOT NULL,
  `iduser` int NOT NULL,
  `comentario` text,
  `fecha` varchar(10) DEFAULT NULL,
  `hora` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idactivo_fijo_comm`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb3;



# Volcado de tabla adm_activo_fijo_status
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_activo_fijo_status` (
  `idstatus` int NOT NULL AUTO_INCREMENT,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idstatus`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_asignargasto
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_asignargasto` (
  `idaasignargasto` int NOT NULL AUTO_INCREMENT,
  `iduser` int DEFAULT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  `fecha_hora` varchar(45) NOT NULL,
  `hora` varchar(45) NOT NULL,
  `iduserdepto` int NOT NULL,
  `idpersonadeposita` varchar(100) DEFAULT NULL,
  `idvehiculo` int DEFAULT NULL,
  `rendimiento` varchar(45) DEFAULT NULL,
  `recurso` int DEFAULT NULL,
  `precio` decimal(11,2) DEFAULT NULL,
  `cantidad` varchar(45) DEFAULT NULL,
  `suma` decimal(11,2) DEFAULT NULL,
  `importeaprobado` decimal(11,2) DEFAULT NULL,
  `importefinal` decimal(11,2) DEFAULT NULL,
  `comentarios` varchar(100) DEFAULT NULL,
  `estado` int NOT NULL,
  `relacion` int NOT NULL,
  `idproyecto` int NOT NULL,
  `actividad` varchar(100) NOT NULL,
  `fecha_programada` varchar(45) NOT NULL,
  `idcliente` int NOT NULL,
  `idregion` int NOT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `localidad` varchar(45) DEFAULT NULL,
  `pernocta` varchar(45) DEFAULT NULL,
  `impacto` varchar(45) DEFAULT NULL,
  `email` int NOT NULL,
  `odg` varchar(45) NOT NULL,
  `estado_just` int NOT NULL,
  `idgrupouser` int NOT NULL,
  PRIMARY KEY (`idaasignargasto`),
  KEY `idx_idgrupouser` (`idgrupouser`)
) ENGINE=InnoDB AUTO_INCREMENT=90079 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_asignargasto_gas
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_asignargasto_gas` (
  `idasignargasto_gas` int NOT NULL AUTO_INCREMENT,
  `odg` varchar(45) DEFAULT NULL,
  `precio_gas` decimal(11,2) NOT NULL,
  `rendimiento` varchar(11) DEFAULT NULL,
  `idtransporte` int NOT NULL,
  `tarjeta_caseta` varchar(45) DEFAULT NULL,
  `tarjeta_gasolina` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idasignargasto_gas`)
) ENGINE=InnoDB AUTO_INCREMENT=10610 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_asignargasto_gasolina
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_asignargasto_gasolina` (
  `idasignargasto_gasolina` int NOT NULL AUTO_INCREMENT,
  `idasignargasto_gas` int NOT NULL,
  `nombre_caseta` varchar(45) DEFAULT NULL,
  `km` varchar(11) DEFAULT NULL,
  `casetas` varchar(11) DEFAULT NULL,
  `ruta_precio` decimal(11,2) NOT NULL,
  `casetas_efectivo` decimal(11,2) NOT NULL,
  PRIMARY KEY (`idasignargasto_gasolina`)
) ENGINE=InnoDB AUTO_INCREMENT=10652 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_bancos
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_bancos` (
  `idbancos` int NOT NULL AUTO_INCREMENT,
  `persona` varchar(45) DEFAULT NULL,
  `no_cuenta` varchar(45) DEFAULT NULL,
  `banco` int NOT NULL,
  `clave` varchar(45) DEFAULT NULL,
  `idempresa` int NOT NULL,
  `sucursal` varchar(45) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefonocontacto` varchar(45) DEFAULT NULL,
  `ejecutivo` varchar(45) DEFAULT NULL,
  `orden` int NOT NULL,
  `sumar` int NOT NULL,
  PRIMARY KEY (`idbancos`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_bancoscuenta
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_bancoscuenta` (
  `idcuentas` int NOT NULL AUTO_INCREMENT,
  `idbancos` int NOT NULL,
  `clave` varchar(45) DEFAULT NULL,
  `idempresa` int NOT NULL,
  `estado` int NOT NULL,
  PRIMARY KEY (`idcuentas`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_bitacora
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_bitacora` (
  `idbitacora` int NOT NULL AUTO_INCREMENT,
  `idbitacora_vehiculo` int NOT NULL,
  `idbitacora_conceptos` int NOT NULL,
  `estado` int NOT NULL,
  `observaciones` tinytext,
  PRIMARY KEY (`idbitacora`)
) ENGINE=InnoDB AUTO_INCREMENT=50875 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_bitacora_conceptos
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_bitacora_conceptos` (
  `idbitacora_conceptos` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  `tipo` varchar(1) NOT NULL DEFAULT 'd',
  `general` tinyint(1) NOT NULL,
  PRIMARY KEY (`idbitacora_conceptos`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_bitacora_eventos_caseta
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_bitacora_eventos_caseta` (
  `idbitacora_eventos_caseta` int NOT NULL AUTO_INCREMENT,
  `idbitacora_vehiculo` int NOT NULL,
  `km` varchar(45) DEFAULT NULL,
  `no_caseta` varchar(45) DEFAULT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idbitacora_eventos_caseta`)
) ENGINE=InnoDB AUTO_INCREMENT=3279 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_bitacora_eventos_gasolina
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_bitacora_eventos_gasolina` (
  `idbitacora_eventos_gasolina` int NOT NULL AUTO_INCREMENT,
  `idbitacora_vehiculo` int DEFAULT NULL,
  `km` varchar(45) DEFAULT NULL,
  `litros` varchar(45) DEFAULT NULL,
  `importe` decimal(11,2) NOT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idbitacora_eventos_gasolina`)
) ENGINE=InnoDB AUTO_INCREMENT=1574 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_bitacora_eventos_hotel
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_bitacora_eventos_hotel` (
  `idbitacora_eventos_hotel` int NOT NULL AUTO_INCREMENT,
  `idbitacora_vehiculo` int DEFAULT NULL,
  `nombre` varchar(80) DEFAULT NULL,
  `estacionamiento` tinyint(1) NOT NULL,
  `auto` tinyint(1) NOT NULL,
  `camioneta` tinyint(1) NOT NULL,
  `camioneta_media` tinyint(1) NOT NULL,
  `nissan_chica` tinyint(1) NOT NULL,
  `nissan_grande` tinyint(1) NOT NULL,
  `robo` tinyint(1) NOT NULL,
  `observaciones` tinytext,
  `fecha` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idbitacora_eventos_hotel`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_bitacora_imagenes
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_bitacora_imagenes` (
  `idbeci` int NOT NULL AUTO_INCREMENT,
  `idb` int NOT NULL,
  `imagen` varchar(45) DEFAULT NULL,
  `tabla` varchar(1) DEFAULT NULL,
  `tipo` int DEFAULT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idbeci`)
) ENGINE=InnoDB AUTO_INCREMENT=6944 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_bitacora_mant_check
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_bitacora_mant_check` (
  `idbitacora_mant_check` int NOT NULL AUTO_INCREMENT,
  `idbitacora_mant_unidad` int NOT NULL,
  `idmantenimientos` int NOT NULL,
  `estado` int DEFAULT NULL,
  PRIMARY KEY (`idbitacora_mant_check`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Volcado de tabla adm_bitacora_mant_unidad
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_bitacora_mant_unidad` (
  `idbitacora_mant_unidad` int NOT NULL AUTO_INCREMENT,
  `idbitacora_vehiculo` int DEFAULT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `km` varchar(45) DEFAULT NULL,
  `fecha` varchar(10) DEFAULT NULL,
  `proveedor_servicio` varchar(100) DEFAULT NULL,
  `factura` varchar(45) DEFAULT NULL,
  `fecha_factura` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idbitacora_mant_unidad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Volcado de tabla adm_bitacora_mantenimientos
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_bitacora_mantenimientos` (
  `idmantenimientos` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idmantenimientos`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_bitacora_reparaciones
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_bitacora_reparaciones` (
  `idreparaciones` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idreparaciones`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_bitacora_vehiculo
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_bitacora_vehiculo` (
  `idbitacora_vehiculo` int NOT NULL AUTO_INCREMENT,
  `idbitacora_vehiculo_rel` int NOT NULL,
  `tipoentrega` tinyint(1) NOT NULL,
  `estado` int NOT NULL,
  `fecha` varchar(10) DEFAULT NULL,
  `hora` varchar(10) DEFAULT NULL,
  `iduser_chofer` int NOT NULL,
  `idtransporte` int NOT NULL,
  `kilometraje` varchar(45) DEFAULT NULL,
  `nivel_gasolina` int NOT NULL,
  `observaciones` tinytext,
  `entrega` varchar(45) DEFAULT NULL,
  `tarjeta_gas` varchar(45) DEFAULT NULL,
  `dias_presupuesto` int NOT NULL,
  `verificado` int NOT NULL,
  PRIMARY KEY (`idbitacora_vehiculo`)
) ENGINE=InnoDB AUTO_INCREMENT=2492 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_cambiosmd
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_cambiosmd` (
  `idcambiosmd` int NOT NULL AUTO_INCREMENT,
  `anio` int NOT NULL,
  `fecha` varchar(10) DEFAULT NULL,
  `idempresa` int NOT NULL,
  `descripcion` text,
  `porcentaje` int NOT NULL,
  PRIMARY KEY (`idcambiosmd`)
) ENGINE=InnoDB AUTO_INCREMENT=216 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_casetas
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_casetas` (
  `idadm_casetas` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) DEFAULT NULL,
  `numero` varchar(30) DEFAULT NULL,
  `carretera` varchar(100) DEFAULT NULL,
  `tipo` int NOT NULL,
  `idestado` int NOT NULL,
  PRIMARY KEY (`idadm_casetas`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_chatpdv
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_chatpdv` (
  `idchatpdv` int NOT NULL AUTO_INCREMENT,
  `iduser` int NOT NULL,
  `idproyectotiendas` int NOT NULL,
  `comentario` text,
  `fecha` varchar(12) DEFAULT NULL,
  `hora` varchar(8) DEFAULT NULL,
  `estado` int NOT NULL,
  PRIMARY KEY (`idchatpdv`)
) ENGINE=InnoDB AUTO_INCREMENT=3096 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_compras
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_compras` (
  `idcompras` int NOT NULL AUTO_INCREMENT,
  `fecha` varchar(45) DEFAULT NULL,
  `comprador` int NOT NULL,
  `idempresa` int NOT NULL,
  `idproyecto` int NOT NULL,
  `material` varchar(45) DEFAULT NULL,
  `idregion` int NOT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `localidad` varchar(45) DEFAULT NULL,
  `pto_venta` varchar(45) DEFAULT NULL,
  `pernota` varchar(45) DEFAULT NULL,
  `odc` varchar(45) DEFAULT NULL,
  `idproveedor` int NOT NULL,
  `tipoproveedor` tinyint(1) NOT NULL DEFAULT '2',
  `idinsumos` int NOT NULL,
  `precio_unitario` decimal(11,2) DEFAULT NULL,
  `iva` varchar(45) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `importe_aprobado` decimal(11,2) DEFAULT '0.00',
  `importe_final` decimal(11,2) DEFAULT '0.00',
  `importe_depositado` decimal(11,2) DEFAULT NULL,
  `fecha_programada` varchar(45) DEFAULT NULL,
  `observaciones` varchar(300) DEFAULT NULL,
  `fecha_entrega` varchar(45) DEFAULT NULL,
  `lugar_entrega` varchar(150) DEFAULT NULL,
  `facturado` int DEFAULT NULL,
  `contacto_proveedor` varchar(45) NOT NULL,
  `idcliente` int NOT NULL,
  `entry_by` varchar(45) DEFAULT NULL,
  `idmes` int NOT NULL,
  `idrequisicion` int NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1',
  `fecha_prog_respaldo` varchar(15) DEFAULT NULL,
  `idsolicitante` int NOT NULL,
  `idpresupuesto` varchar(45) DEFAULT NULL,
  `estado_odc` int NOT NULL,
  `estado_sp` int NOT NULL,
  PRIMARY KEY (`idcompras`)
) ENGINE=InnoDB AUTO_INCREMENT=20599 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_comprobacion
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_comprobacion` (
  `idcomprobacion` int NOT NULL AUTO_INCREMENT,
  `fecha` varchar(10) DEFAULT NULL,
  `verificado_asoc` varchar(45) DEFAULT NULL,
  `estado_sat` varchar(45) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `fecha_emision` varchar(10) DEFAULT NULL,
  `fecha_emision_original` varchar(10) DEFAULT NULL,
  `anio` varchar(4) DEFAULT NULL,
  `mes` varchar(2) DEFAULT NULL,
  `estado_pago` varchar(45) DEFAULT NULL,
  `fecha_pago` varchar(10) DEFAULT NULL,
  `serie` varchar(45) DEFAULT NULL,
  `folio` varchar(45) DEFAULT NULL,
  `uuid` varchar(45) DEFAULT NULL,
  `uuidcomp` varchar(45) DEFAULT NULL,
  `uuid_relacion` varchar(45) DEFAULT NULL,
  `rfc_emisor` varchar(45) DEFAULT NULL,
  `nombre_emisor` tinytext,
  `cp` varchar(10) DEFAULT NULL,
  `rfc_receptor` varchar(45) DEFAULT NULL,
  `nombre_receptor` varchar(45) DEFAULT NULL,
  `usocfdi` varchar(45) DEFAULT NULL,
  `subtotal` decimal(11,2) DEFAULT NULL,
  `descuento` decimal(11,2) DEFAULT NULL,
  `total_ieps` decimal(11,2) DEFAULT NULL,
  `iva_16` decimal(11,2) DEFAULT NULL,
  `retenido_iva` decimal(11,2) DEFAULT NULL,
  `retenido_isr` decimal(11,2) DEFAULT NULL,
  `ish` decimal(11,2) DEFAULT NULL,
  `total` decimal(11,2) DEFAULT NULL,
  `total_original` decimal(11,2) DEFAULT NULL,
  `total_traslados` decimal(11,2) DEFAULT NULL,
  `total_retenidos` decimal(11,2) DEFAULT NULL,
  `total_localtranslado` decimal(11,2) DEFAULT NULL,
  `total_localretenido` decimal(11,2) DEFAULT NULL,
  `complemento` varchar(45) DEFAULT NULL,
  `moneda` varchar(15) DEFAULT NULL,
  `tipo_cambio` varchar(15) DEFAULT NULL,
  `forma_pago` varchar(45) DEFAULT NULL,
  `metodo_pago` varchar(45) DEFAULT NULL,
  `numctapago` varchar(45) DEFAULT NULL,
  `condicion_pago` varchar(45) DEFAULT NULL,
  `conceptos` text,
  `archivo_xml` varchar(45) DEFAULT NULL,
  `direccion_emisor` varchar(45) DEFAULT NULL,
  `localidad_emisor` varchar(45) DEFAULT NULL,
  `direccion_receptor` varchar(45) DEFAULT NULL,
  `localidad_receptor` varchar(45) DEFAULT NULL,
  `iva_8` decimal(11,2) DEFAULT NULL,
  `ieps_304` varchar(15) DEFAULT NULL,
  `idzona` int NOT NULL,
  PRIMARY KEY (`idcomprobacion`)
) ENGINE=InnoDB AUTO_INCREMENT=5275 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_comprobacion_envios
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_comprobacion_envios` (
  `idcomprobacion_envios` int NOT NULL AUTO_INCREMENT,
  `iduser` int NOT NULL,
  `idproyecto` int NOT NULL,
  `fecha` varchar(10) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `envios` decimal(11,2) NOT NULL,
  `personal` decimal(11,2) NOT NULL,
  PRIMARY KEY (`idcomprobacion_envios`)
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;



# Volcado de tabla adm_comprobacion_img
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_comprobacion_img` (
  `idcomprobacion_img` int NOT NULL AUTO_INCREMENT,
  `idcomprobacion_odg` int NOT NULL,
  `ruta` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `imagen` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `estatus` tinyint(1) NOT NULL,
  PRIMARY KEY (`idcomprobacion_img`)
) ENGINE=InnoDB AUTO_INCREMENT=4433 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_comprobacion_odg
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_comprobacion_odg` (
  `idcomprobacion_odg` int NOT NULL AUTO_INCREMENT,
  `iduser` int NOT NULL,
  `fecha` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `idtipogasto` int NOT NULL,
  `comentarios` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `observaciones` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `importe` decimal(11,2) NOT NULL,
  PRIMARY KEY (`idcomprobacion_odg`)
) ENGINE=InnoDB AUTO_INCREMENT=2858 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_conben
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_conben` (
  `idadm_conben` int NOT NULL AUTO_INCREMENT,
  `conben` varchar(100) DEFAULT NULL,
  `tipo` int NOT NULL,
  PRIMARY KEY (`idadm_conben`)
) ENGINE=InnoDB AUTO_INCREMENT=4956 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_correos
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_correos` (
  `id_correos` int NOT NULL AUTO_INCREMENT,
  `fecha` varchar(15) DEFAULT NULL,
  `iduser` int DEFAULT NULL,
  PRIMARY KEY (`id_correos`)
) ENGINE=InnoDB AUTO_INCREMENT=405 DEFAULT CHARSET=utf8mb3;



# Volcado de tabla adm_correos_almacen
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_correos_almacen` (
  `idcorreos_almacen` int NOT NULL AUTO_INCREMENT,
  `dia` int NOT NULL,
  `iduser` int NOT NULL,
  PRIMARY KEY (`idcorreos_almacen`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_depositos
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_depositos` (
  `iddepositos` int NOT NULL AUTO_INCREMENT,
  `deposito` decimal(11,2) DEFAULT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  `idcompras` int NOT NULL,
  PRIMARY KEY (`iddepositos`)
) ENGINE=InnoDB AUTO_INCREMENT=22420 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_depositosfactura
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_depositosfactura` (
  `iddeposito` int NOT NULL AUTO_INCREMENT,
  `idfacturacion` int DEFAULT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  `deposito` decimal(11,2) DEFAULT NULL,
  PRIMARY KEY (`iddeposito`)
) ENGINE=InnoDB AUTO_INCREMENT=2222 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_depositosjust
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_depositosjust` (
  `iddepositosjust` int NOT NULL AUTO_INCREMENT,
  `iduser` int NOT NULL,
  `idrecurso` int NOT NULL,
  `fecha` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `importe` decimal(11,2) DEFAULT NULL,
  `folio` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `concepto` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `tipo` int NOT NULL,
  `anio` varchar(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT '2018',
  `foliodupli` varchar(45) DEFAULT NULL,
  `municipio` varchar(45) DEFAULT NULL,
  `idestado` int NOT NULL,
  `std_csg` int NOT NULL,
  `observaciones` tinytext,
  PRIMARY KEY (`iddepositosjust`)
) ENGINE=InnoDB AUTO_INCREMENT=37603 DEFAULT CHARSET=utf8mb3;



# Volcado de tabla adm_depositosjust_anio
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_depositosjust_anio` (
  `iddepositosjust_anio` int NOT NULL AUTO_INCREMENT,
  `iduser` int NOT NULL,
  `idanio` int NOT NULL,
  PRIMARY KEY (`iddepositosjust_anio`)
) ENGINE=InnoDB AUTO_INCREMENT=30447 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_despositosgasto
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_despositosgasto` (
  `iddeposito` int NOT NULL AUTO_INCREMENT,
  `fecha` varchar(10) DEFAULT NULL,
  `deposito` decimal(11,2) DEFAULT NULL,
  `idasignargasto` int DEFAULT NULL,
  PRIMARY KEY (`iddeposito`),
  KEY `idx_idasignargasto` (`idasignargasto`)
) ENGINE=InnoDB AUTO_INCREMENT=85224 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_dias
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_dias` (
  `iddias` int NOT NULL AUTO_INCREMENT,
  `dias` int DEFAULT NULL,
  `desc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iddias`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_direcciones
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_direcciones` (
  `iddirecciones` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iddirecciones`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_direcciongasto
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_direcciongasto` (
  `iddirecciongasto` int NOT NULL AUTO_INCREMENT,
  `idtipogasto` int NOT NULL,
  `iduser` int NOT NULL,
  PRIMARY KEY (`iddirecciongasto`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_direcciongastomeses
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_direcciongastomeses` (
  `iddirecciongastomeses` int NOT NULL AUTO_INCREMENT,
  `iddirecciongasto` int NOT NULL,
  `idmes` varchar(2) NOT NULL,
  `cantidad` decimal(11,2) NOT NULL,
  PRIMARY KEY (`iddirecciongastomeses`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_documentacion
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_documentacion` (
  `iddocumentacion` int NOT NULL AUTO_INCREMENT,
  `documentacion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iddocumentacion`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_egresos
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_egresos` (
  `idegresos` int NOT NULL AUTO_INCREMENT,
  `egreso` varchar(45) DEFAULT NULL,
  `codigosat` varchar(45) DEFAULT NULL,
  `sumar` int NOT NULL,
  `estado_facturacion` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idegresos`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_ejes
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_ejes` (
  `idadm_ejes` int NOT NULL AUTO_INCREMENT,
  `idadm_casetas` int NOT NULL,
  `idadm_ejes_tipo` int NOT NULL,
  `costo` decimal(11,2) NOT NULL,
  PRIMARY KEY (`idadm_ejes`)
) ENGINE=InnoDB AUTO_INCREMENT=3826 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_ejes_tipo
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_ejes_tipo` (
  `idadm_ejes_tipo` int NOT NULL AUTO_INCREMENT,
  `eje` varchar(20) DEFAULT NULL,
  `idadm_variables_superadmin` int NOT NULL,
  PRIMARY KEY (`idadm_ejes_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_email
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_email` (
  `idemail` int NOT NULL AUTO_INCREMENT,
  `template` varchar(45) DEFAULT NULL,
  `boton` varchar(45) DEFAULT NULL,
  `iduser` int NOT NULL,
  PRIMARY KEY (`idemail`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_email_file
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_email_file` (
  `idemail_file` int NOT NULL AUTO_INCREMENT,
  `idpt` int NOT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `url` tinytext,
  `fecha` varchar(10) DEFAULT NULL,
  `hora` varchar(10) DEFAULT NULL,
  `rg_iduser` int NOT NULL,
  PRIMARY KEY (`idemail_file`)
) ENGINE=MyISAM AUTO_INCREMENT=1569 DEFAULT CHARSET=utf8mb3;



# Volcado de tabla adm_email_user
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_email_user` (
  `idemail_user` int NOT NULL AUTO_INCREMENT,
  `idemail_file` int NOT NULL,
  `iduser` int NOT NULL,
  `correo` tinytext NOT NULL,
  `estatus` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idemail_user`)
) ENGINE=MyISAM AUTO_INCREMENT=10209 DEFAULT CHARSET=utf8mb3;



# Volcado de tabla adm_emailgasto
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_emailgasto` (
  `idemailgasto` int NOT NULL AUTO_INCREMENT,
  `idhoteles` int NOT NULL,
  `odg` varchar(15) DEFAULT NULL,
  `iduser` int NOT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idemailgasto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_empresas
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_empresas` (
  `idempresas` int NOT NULL AUTO_INCREMENT,
  `logo` varchar(45) DEFAULT NULL,
  `razonsocial` varchar(45) DEFAULT NULL,
  `abreviatura` varchar(45) DEFAULT NULL,
  `odc` int NOT NULL,
  `sp` int NOT NULL,
  `pres` int NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `direccionfiscal` varchar(45) DEFAULT NULL,
  `direccionfisica` varchar(100) DEFAULT NULL,
  `rfc` varchar(45) DEFAULT NULL,
  `apoderadolegal` varchar(45) DEFAULT NULL,
  `objetosocial` varchar(45) DEFAULT NULL,
  `nombrecomercial` varchar(45) DEFAULT NULL,
  `std_md` tinyint(1) NOT NULL,
  PRIMARY KEY (`idempresas`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_esta_cta
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_esta_cta` (
  `idestadoscuenta` int NOT NULL AUTO_INCREMENT,
  `fecha` varchar(45) DEFAULT NULL,
  `idbanco` int NOT NULL,
  `beneficiario` varchar(45) DEFAULT NULL,
  `concepto` varchar(100) DEFAULT NULL,
  `idempresa` int NOT NULL,
  `idproyecto` int NOT NULL,
  `cheque` varchar(45) DEFAULT NULL,
  `no_ref_bancaria` varchar(45) DEFAULT NULL,
  `salidas` decimal(11,2) DEFAULT NULL,
  `idegresos` int NOT NULL,
  `idgastocontable` int NOT NULL,
  `entradas` decimal(11,2) DEFAULT NULL,
  `idingresos` int NOT NULL,
  `observaciones` text,
  `tipo` int NOT NULL,
  `iva` varchar(45) NOT NULL,
  `idcliente` int NOT NULL,
  `transpaso` int NOT NULL,
  `idcompras` int NOT NULL,
  `idfacturacion` int NOT NULL,
  `arrastre` decimal(11,2) NOT NULL,
  `arrastre_total` decimal(11,2) NOT NULL,
  `idbeneficiario` int NOT NULL,
  `idtipo` enum('0','1','2') DEFAULT '0',
  `estado_facturacion` int NOT NULL DEFAULT '0',
  `idremisiones` int NOT NULL,
  PRIMARY KEY (`idestadoscuenta`)
) ENGINE=InnoDB AUTO_INCREMENT=63486 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_esta_cta_proyectos
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_esta_cta_proyectos` (
  `idesta_cta_proyectos` int NOT NULL AUTO_INCREMENT,
  `idestadoscuenta` int NOT NULL,
  `idproyectos` int NOT NULL,
  `fecha` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idesta_cta_proyectos`)
) ENGINE=InnoDB AUTO_INCREMENT=53094 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_estatus_material
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_estatus_material` (
  `idestatus_material` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  `orden` tinyint(1) NOT NULL,
  `abreviatura` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idestatus_material`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_estatus_ope
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_estatus_ope` (
  `idestatus` int NOT NULL AUTO_INCREMENT,
  `estatus` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idestatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;



# Volcado de tabla adm_facturacion
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_facturacion` (
  `idfacturacion` int NOT NULL AUTO_INCREMENT,
  `estado` int NOT NULL,
  `fecha` varchar(10) DEFAULT NULL,
  `factura` varchar(45) DEFAULT NULL,
  `idproyecto` int DEFAULT NULL,
  `orden_compra` varchar(45) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `retencion` int NOT NULL,
  `cant_iva` decimal(11,2) NOT NULL,
  `cant_retencion` decimal(11,2) NOT NULL,
  `total` decimal(11,2) NOT NULL,
  `fecha_revision` varchar(10) DEFAULT NULL,
  `fecha_promesa_pago` varchar(10) DEFAULT NULL,
  `observaciones` varchar(500) DEFAULT NULL,
  `dias_credito` int NOT NULL,
  `idcliente` int NOT NULL,
  `fecha_mayor` varchar(10) DEFAULT NULL,
  `cant_ingresada` decimal(11,2) NOT NULL,
  `iva` int NOT NULL,
  PRIMARY KEY (`idfacturacion`)
) ENGINE=InnoDB AUTO_INCREMENT=4614 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_file_carpetas
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_file_carpetas` (
  `idfile_carpetas` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `idfile_carpetas_rel` int NOT NULL,
  `url` text,
  `permiso` tinyint(1) NOT NULL,
  PRIMARY KEY (`idfile_carpetas`)
) ENGINE=InnoDB AUTO_INCREMENT=650 DEFAULT CHARSET=utf8mb3;



# Volcado de tabla adm_file_galeria
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_file_galeria` (
  `idfile_galeria` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  `iduser` int DEFAULT NULL,
  `fecha` varchar(10) DEFAULT NULL,
  `identificador` varchar(45) DEFAULT NULL,
  `hora` varchar(10) DEFAULT NULL,
  `ext` varchar(10) DEFAULT NULL,
  `size` varchar(10) DEFAULT NULL,
  `idfile_carpetas` int NOT NULL,
  PRIMARY KEY (`idfile_galeria`)
) ENGINE=InnoDB AUTO_INCREMENT=9169 DEFAULT CHARSET=utf8mb3;



# Volcado de tabla adm_file_galeria_update
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_file_galeria_update` (
  `idfile_galeria_update` int NOT NULL AUTO_INCREMENT,
  `idfile_galeria` int NOT NULL,
  `iduser` int NOT NULL,
  `fecha` varchar(10) DEFAULT NULL,
  `hora` int DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idfile_galeria_update`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;



# Volcado de tabla adm_file_user
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_file_user` (
  `idfile_user` int NOT NULL AUTO_INCREMENT,
  `idfile_carpetas` int NOT NULL,
  `iduser` int NOT NULL,
  PRIMARY KEY (`idfile_user`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8mb3;



# Volcado de tabla adm_flujo
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_flujo` (
  `idflujo` int NOT NULL AUTO_INCREMENT,
  `tipo` int NOT NULL,
  `idtipo_tabla` int NOT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  `cantidad` decimal(11,2) DEFAULT NULL,
  `estado` int NOT NULL,
  PRIMARY KEY (`idflujo`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_flujo_empresas
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_flujo_empresas` (
  `idflujo_empresas` int NOT NULL AUTO_INCREMENT,
  `iduser` int NOT NULL,
  `idempresas` int NOT NULL,
  PRIMARY KEY (`idflujo_empresas`)
) ENGINE=InnoDB AUTO_INCREMENT=394 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_flujoano
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_flujoano` (
  `idano` int NOT NULL AUTO_INCREMENT,
  `ano` varchar(4) DEFAULT NULL,
  `saldo_inicial` decimal(11,2) NOT NULL,
  PRIMARY KEY (`idano`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_gastocontable
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_gastocontable` (
  `idgastocontable` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(70) DEFAULT NULL,
  `entry_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idgastocontable`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_gastocontabletipos
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_gastocontabletipos` (
  `idgastocontabletipos` int NOT NULL AUTO_INCREMENT,
  `idgastocontable` int NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `idtipogasto` int NOT NULL,
  PRIMARY KEY (`idgastocontabletipos`)
) ENGINE=InnoDB AUTO_INCREMENT=327 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_gastocontabletipos_gastos
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_gastocontabletipos_gastos` (
  `idgastocontabletipos_gastos` int NOT NULL AUTO_INCREMENT,
  `idgastocontabletipos` int NOT NULL,
  `idtipogasto` int NOT NULL,
  PRIMARY KEY (`idgastocontabletipos_gastos`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_gastocontabletiposmaterial
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_gastocontabletiposmaterial` (
  `idgastocontabletiposmaterial` int NOT NULL AUTO_INCREMENT,
  `idgastocontabletipos` int NOT NULL,
  `descripcion` tinytext,
  PRIMARY KEY (`idgastocontabletiposmaterial`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_gastos
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_gastos` (
  `idgastos` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  `entry_by` int DEFAULT NULL,
  PRIMARY KEY (`idgastos`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_gastostipos
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_gastostipos` (
  `idgastostipos` int NOT NULL AUTO_INCREMENT,
  `idgastos` int NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idgastostipos`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_geolocation
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_geolocation` (
  `idgeolocation` int NOT NULL AUTO_INCREMENT,
  `iduser` int NOT NULL,
  `fecha` varchar(10) DEFAULT NULL,
  `hora` varchar(15) DEFAULT NULL,
  `longitud` varchar(45) DEFAULT NULL,
  `latitud` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idgeolocation`)
) ENGINE=InnoDB AUTO_INCREMENT=16820 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_herramienta_img
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_herramienta_img` (
  `idherramienta_img` int NOT NULL AUTO_INCREMENT,
  `iduser` int NOT NULL,
  `fecha` varchar(10) DEFAULT NULL,
  `imagen` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idherramienta_img`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Volcado de tabla adm_hoteles
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_hoteles` (
  `idadm_hoteles` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `razon_social` varchar(45) DEFAULT NULL,
  `rfc` varchar(15) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `colonia` varchar(70) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `idzona` int NOT NULL,
  `codigo_postal` varchar(45) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `contacto` varchar(45) DEFAULT NULL,
  `numero_cuenta` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `ubicacion` varchar(80) DEFAULT NULL,
  `est_camioneta` int NOT NULL,
  `esta_carro` int NOT NULL,
  `ciudad` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`idadm_hoteles`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_hoteles_habitacion
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_hoteles_habitacion` (
  `idadm_hoteles_habitacion` int NOT NULL AUTO_INCREMENT,
  `idadm_hoteles` int NOT NULL,
  `idhabitacion` int NOT NULL,
  `costo` decimal(11,2) NOT NULL,
  PRIMARY KEY (`idadm_hoteles_habitacion`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_incidencias
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_incidencias` (
  `idincidencias` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  `unidad` varchar(45) DEFAULT NULL,
  `tipo` int DEFAULT '1',
  PRIMARY KEY (`idincidencias`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb3;



# Volcado de tabla adm_incidencias_tipos
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_incidencias_tipos` (
  `idincidencias_tipos` int NOT NULL AUTO_INCREMENT,
  `idincidencias` int NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idincidencias_tipos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;



# Volcado de tabla adm_ingresos
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_ingresos` (
  `idingresos` int NOT NULL AUTO_INCREMENT,
  `ingreso` varchar(45) DEFAULT NULL,
  `sumar` int NOT NULL,
  PRIMARY KEY (`idingresos`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_mantenimientos_img
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_mantenimientos_img` (
  `idmantenimientos_img` int NOT NULL AUTO_INCREMENT,
  `idmantenimientos_reg` int NOT NULL,
  `ruta` varchar(45) DEFAULT NULL,
  `imagen` varchar(25) DEFAULT NULL,
  `type` tinyint(1) NOT NULL,
  PRIMARY KEY (`idmantenimientos_img`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_mantenimientos_reg
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_mantenimientos_reg` (
  `idmantenimientos_reg` int NOT NULL AUTO_INCREMENT,
  `idmantenimientos` int NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `idestatus` tinyint(1) NOT NULL,
  PRIMARY KEY (`idmantenimientos_reg`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_mantenimientos_tabulador
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_mantenimientos_tabulador` (
  `idmantenimientos_tabulador` int NOT NULL AUTO_INCREMENT,
  `idmantenimientos` int NOT NULL,
  `descripcion` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` decimal(11,2) NOT NULL,
  `total` decimal(11,2) NOT NULL,
  PRIMARY KEY (`idmantenimientos_tabulador`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;



# Volcado de tabla adm_matenimientos
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_matenimientos` (
  `idmantenimientos` int NOT NULL AUTO_INCREMENT,
  `iduser` int NOT NULL,
  `pdv` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `direccion` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `fecha_rg` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `hora_rg` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `idestatus` tinyint(1) NOT NULL,
  `numero` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `observaciones` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`idmantenimientos`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;



# Volcado de tabla adm_matventa
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_matventa` (
  `idmatventa` int NOT NULL AUTO_INCREMENT,
  `idtipomatventa` int NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `precio` decimal(11,2) NOT NULL,
  `estado` int NOT NULL,
  PRIMARY KEY (`idmatventa`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_mes
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_mes` (
  `idmes` int NOT NULL AUTO_INCREMENT,
  `mes` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idmes`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_minuta
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_minuta` (
  `idminuta` int NOT NULL AUTO_INCREMENT,
  `idminuta_tipo` int NOT NULL,
  `fecha` varchar(10) DEFAULT NULL,
  `idproyecto` int NOT NULL,
  `responsable` varchar(100) DEFAULT NULL,
  `alcance` tinytext,
  `fecha_compromiso` varchar(100) DEFAULT NULL,
  `proyecto` tinytext,
  `cliente` varchar(100) DEFAULT NULL,
  `estado` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idminuta`)
) ENGINE=InnoDB AUTO_INCREMENT=942 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_minuta_comentarios
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_minuta_comentarios` (
  `idminuta_comentarios` int NOT NULL AUTO_INCREMENT,
  `iduser` int NOT NULL,
  `idminuta` int NOT NULL,
  `comentarios` text,
  PRIMARY KEY (`idminuta_comentarios`)
) ENGINE=InnoDB AUTO_INCREMENT=942 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_minuta_tipo
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_minuta_tipo` (
  `idminuta_tipo` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idminuta_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_minuta_tipo_users
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_minuta_tipo_users` (
  `idminuta_tipo_users` int NOT NULL AUTO_INCREMENT,
  `iduser` int NOT NULL,
  `idminuta_tipo` int NOT NULL,
  PRIMARY KEY (`idminuta_tipo_users`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_permisos
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_permisos` (
  `idpermisos` int NOT NULL AUTO_INCREMENT,
  `iduser` int NOT NULL DEFAULT '0',
  `modulo` varchar(45) DEFAULT NULL,
  `idpuesto` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpermisos`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_postalcode
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_postalcode` (
  `idpostalcode` int NOT NULL AUTO_INCREMENT,
  `codigo` varchar(6) DEFAULT NULL,
  `asentamiento` varchar(45) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `municipio` varchar(45) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `idzona` int NOT NULL,
  `idestados` int NOT NULL,
  PRIMARY KEY (`idpostalcode`)
) ENGINE=InnoDB AUTO_INCREMENT=143225 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_presupuesto
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_presupuesto` (
  `idpresupuesto` int NOT NULL AUTO_INCREMENT,
  `fecha` varchar(45) DEFAULT NULL,
  `comprador` int NOT NULL,
  `idproyecto` int NOT NULL,
  `material` varchar(45) DEFAULT NULL,
  `idregion` int NOT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `localidad` varchar(45) DEFAULT NULL,
  `pto_venta` varchar(45) DEFAULT NULL,
  `pernota` varchar(45) DEFAULT NULL,
  `odc` varchar(45) DEFAULT NULL,
  `idproveedor` int NOT NULL,
  `tipoproveedor` tinyint(1) NOT NULL DEFAULT '2',
  `idinsumos` int NOT NULL,
  `precio_unitario` decimal(11,2) DEFAULT NULL,
  `iva` varchar(45) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `importe_aprobado` decimal(11,2) DEFAULT NULL,
  `importe_final` decimal(11,2) DEFAULT NULL,
  `importe_depositado` decimal(11,2) DEFAULT NULL,
  `fecha_programada` varchar(45) DEFAULT NULL,
  `observaciones` varchar(300) DEFAULT NULL,
  `fecha_entrega` varchar(45) DEFAULT NULL,
  `lugar_entrega` varchar(150) DEFAULT NULL,
  `facturado` int DEFAULT NULL,
  `contacto_proveedor` varchar(45) NOT NULL,
  `idcliente` int NOT NULL,
  `entry_by` varchar(45) DEFAULT NULL,
  `idmes` int NOT NULL,
  `anio` int NOT NULL,
  `idrequisicion` int NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1',
  `fecha_prog_respaldo` varchar(15) DEFAULT NULL,
  `idsolicitante` int NOT NULL,
  `idpuesto` int NOT NULL,
  PRIMARY KEY (`idpresupuesto`)
) ENGINE=InnoDB AUTO_INCREMENT=1093 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_presupuesto_cantidad
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_presupuesto_cantidad` (
  `idpresupuesto_cantidad` int NOT NULL AUTO_INCREMENT,
  `idpresupuesto` varchar(45) NOT NULL,
  `idmes` int NOT NULL,
  `imp_final` decimal(11,2) NOT NULL,
  `fecha_programada` varchar(10) DEFAULT NULL,
  `idcompras` int NOT NULL,
  PRIMARY KEY (`idpresupuesto_cantidad`)
) ENGINE=InnoDB AUTO_INCREMENT=2267 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_presupuesto_material
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_presupuesto_material` (
  `idpresupuesto_material` int NOT NULL AUTO_INCREMENT,
  `idpresupuesto` int NOT NULL,
  `idgastocontabletiposmaterial` int NOT NULL,
  PRIMARY KEY (`idpresupuesto_material`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_presupuestos_excel
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_presupuestos_excel` (
  `idpresupuestos_excel` int NOT NULL AUTO_INCREMENT,
  `fecha` varchar(10) DEFAULT NULL,
  `descripcion` text,
  `excel` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idpresupuestos_excel`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_proforma
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_proforma` (
  `idproforma` int NOT NULL AUTO_INCREMENT,
  `idgastocontabletipos` int NOT NULL,
  `idgastostipos` int NOT NULL,
  `idpuestos` int NOT NULL,
  `numero` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`idproforma`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_proformapuestos
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_proformapuestos` (
  `idproformapuestos` int NOT NULL AUTO_INCREMENT,
  `idgastocontabletipos` int NOT NULL,
  `idpuestos` int NOT NULL,
  PRIMARY KEY (`idproformapuestos`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_proformapuestosmeses
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_proformapuestosmeses` (
  `idproformapuestosmeses` int NOT NULL AUTO_INCREMENT,
  `idproformapuestos` int NOT NULL,
  `iduser` int NOT NULL,
  `idmes` varchar(2) DEFAULT NULL,
  `cantidad` decimal(11,2) NOT NULL,
  PRIMARY KEY (`idproformapuestosmeses`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Volcado de tabla adm_proveedores
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_proveedores` (
  `idproveedores` int NOT NULL AUTO_INCREMENT,
  `proveedor` varchar(45) DEFAULT NULL,
  `razonsocial` varchar(45) DEFAULT NULL,
  `personacontacto` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefonos` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `paginaweb` varchar(45) DEFAULT NULL,
  `condiciones` varchar(45) DEFAULT NULL,
  `banco` int NOT NULL,
  `nocuenta` varchar(45) DEFAULT NULL,
  `clabe` varchar(45) CHARACTER SET big5 COLLATE big5_chinese_ci DEFAULT NULL,
  `rfc` varchar(45) DEFAULT NULL,
  `giro` varchar(45) DEFAULT NULL,
  `celular` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idproveedores`)
) ENGINE=InnoDB AUTO_INCREMENT=647 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_puestos
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_puestos` (
  `idpuestos` int NOT NULL AUTO_INCREMENT,
  `iddirecciones` int DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idpuestos`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_remisiones
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_remisiones` (
  `idremisiones` int NOT NULL AUTO_INCREMENT,
  `numero` varchar(10) DEFAULT NULL,
  `fecha` varchar(10) DEFAULT NULL,
  `fecha_entrega` varchar(15) DEFAULT NULL,
  `idproyecto` int NOT NULL,
  `idempresa` int NOT NULL,
  `idregion` int NOT NULL,
  `solicitado_para` varchar(45) DEFAULT NULL,
  `idsolicitante` int NOT NULL,
  `forma_pago` int NOT NULL,
  `depositar_a` int NOT NULL,
  `idtipo` int NOT NULL,
  `autorizo` int NOT NULL,
  `observaciones` text,
  `proveedor` varchar(45) DEFAULT NULL,
  `idprovedor` int NOT NULL,
  `meses` varchar(200) DEFAULT NULL,
  `estado` int NOT NULL,
  `idautorizo_requisicion` int NOT NULL,
  `iva` varchar(9) DEFAULT NULL,
  `std` tinyint(1) NOT NULL,
  `subtotal` decimal(11,2) NOT NULL,
  `ivaa` decimal(11,2) NOT NULL,
  `total` decimal(11,2) NOT NULL,
  `iduser_vobo` int NOT NULL,
  `idremision_dupli` int NOT NULL,
  `no_retencion` decimal(11,2) NOT NULL,
  `retencion` decimal(11,2) NOT NULL,
  PRIMARY KEY (`idremisiones`)
) ENGINE=InnoDB AUTO_INCREMENT=10031 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_remisiones_material
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_remisiones_material` (
  `idremisionesmaterial` int NOT NULL AUTO_INCREMENT,
  `idremisiones` int NOT NULL,
  `idgasto` int NOT NULL,
  `codigo` varchar(35) DEFAULT NULL,
  `cantidad` int NOT NULL,
  `unidad` int NOT NULL,
  `descripcion` text,
  `pu` decimal(11,2) DEFAULT NULL,
  `iva` decimal(11,2) DEFAULT NULL,
  `importe` decimal(11,2) DEFAULT NULL,
  `fecha_entrega` varchar(10) DEFAULT NULL,
  `idinventario_material` int NOT NULL,
  `idproyecto` int NOT NULL,
  `observaciones` tinytext,
  `importe_anterior` decimal(11,2) NOT NULL,
  `reimpresion` int NOT NULL,
  `subproyecto` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`idremisionesmaterial`)
) ENGINE=InnoDB AUTO_INCREMENT=24520 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_remisiones_proyectos
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_remisiones_proyectos` (
  `idremisionesproyectos` int NOT NULL AUTO_INCREMENT,
  `idproyecto` int NOT NULL,
  `idremisiones` int NOT NULL,
  `porcarga` int NOT NULL,
  PRIMARY KEY (`idremisionesproyectos`)
) ENGINE=InnoDB AUTO_INCREMENT=10841 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_tipogasto
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_tipogasto` (
  `idtipogasto` int NOT NULL AUTO_INCREMENT,
  `tipogasto` varchar(45) DEFAULT NULL,
  `codigosat` varchar(45) DEFAULT NULL,
  `tipo` int NOT NULL,
  `idegresos` int NOT NULL,
  `estadodepto` tinyint(1) NOT NULL,
  `estado` int NOT NULL DEFAULT '0',
  `estadomaterial` tinyint(1) NOT NULL,
  `idgastocontabletipos` int NOT NULL,
  PRIMARY KEY (`idtipogasto`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_tipomatventa
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_tipomatventa` (
  `idtipomatventa` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtipomatventa`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_tiposbancos
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_tiposbancos` (
  `idtiposbancos` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtiposbancos`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_tipotrabajo
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_tipotrabajo` (
  `idtipotrabajo` int NOT NULL AUTO_INCREMENT,
  `codigo` varchar(15) DEFAULT NULL,
  `trabajo` varchar(45) DEFAULT NULL,
  `unidad` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idtipotrabajo`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_ubicacion
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_ubicacion` (
  `idubicacion` int NOT NULL AUTO_INCREMENT,
  `ubicacion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idubicacion`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_userdocument
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_userdocument` (
  `iduserdocument` int NOT NULL AUTO_INCREMENT,
  `iduser` int NOT NULL,
  `iddocumentacion` int NOT NULL,
  PRIMARY KEY (`iduserdocument`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_userempresa
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_userempresa` (
  `iduserempresa` int NOT NULL AUTO_INCREMENT,
  `iduser` int NOT NULL,
  `idempresa` int NOT NULL,
  PRIMARY KEY (`iduserempresa`)
) ENGINE=InnoDB AUTO_INCREMENT=1420 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_userimgdocument
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_userimgdocument` (
  `iduserimgdocument` int NOT NULL AUTO_INCREMENT,
  `iduser` int NOT NULL,
  `foto` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`iduserimgdocument`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_variables
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_variables` (
  `idvariable` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  `valor` varchar(45) DEFAULT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  `entry_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idvariable`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_variables_superadmin
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_variables_superadmin` (
  `idadm_variables_superadmin` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(70) DEFAULT NULL,
  `tabla` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idadm_variables_superadmin`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_vehiculo
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_vehiculo` (
  `idvehiculo` int NOT NULL AUTO_INCREMENT,
  `vehiculo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idvehiculo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_ventas
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_ventas` (
  `idventas` int NOT NULL AUTO_INCREMENT,
  `idventas_proyectos` int NOT NULL,
  `fecha` varchar(10) DEFAULT NULL,
  `mes` int NOT NULL,
  `servicio` int DEFAULT NULL,
  `pdv` int NOT NULL,
  `responsable` varchar(45) DEFAULT NULL,
  `canal` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `dias` int NOT NULL,
  `fi` varchar(10) DEFAULT NULL,
  `ff` varchar(10) DEFAULT NULL,
  `porcentaje` int NOT NULL,
  `comentarios` tinytext,
  `sol_ejecutivo_tel` int DEFAULT NULL,
  `sol_gerente_tel` int DEFAULT NULL,
  `canal_tel` varchar(45) DEFAULT NULL,
  `idproyectotiendas` int DEFAULT NULL,
  `idventas_tipo_mob` int DEFAULT NULL,
  `idterritorio` int DEFAULT NULL,
  `idtipotrabajo` int DEFAULT NULL,
  `idvehiculo` int DEFAULT NULL,
  `cantidad_tel` int DEFAULT NULL,
  PRIMARY KEY (`idventas`)
) ENGINE=InnoDB AUTO_INCREMENT=520 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_ventas_ante
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_ventas_ante` (
  `idestatus` int NOT NULL AUTO_INCREMENT,
  `estatus` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idestatus`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;



# Volcado de tabla adm_ventas_contactos
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_ventas_contactos` (
  `idventas_contactos` int NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL,
  `iduser` int NOT NULL,
  `origen` varchar(45) DEFAULT NULL,
  `titulo` varchar(15) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `ap` varchar(45) DEFAULT NULL,
  `am` varchar(45) DEFAULT NULL,
  `posicion` varchar(45) DEFAULT NULL,
  `departamento` varchar(45) DEFAULT NULL,
  `direccion` tinytext,
  `plaza` varchar(45) DEFAULT NULL,
  `tel_oficina` char(25) DEFAULT NULL,
  `ext` char(15) DEFAULT NULL,
  `tel_otro` char(25) DEFAULT NULL,
  `tel_celular` char(25) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `idcliente` int NOT NULL,
  PRIMARY KEY (`idventas_contactos`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8mb3;



# Volcado de tabla adm_ventas_contactos_emp
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_ventas_contactos_emp` (
  `idventas_contactos_emp` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idventas_contactos_emp`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb3;



# Volcado de tabla adm_ventas_estatus
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_ventas_estatus` (
  `idestatus` int NOT NULL AUTO_INCREMENT,
  `estatus` varchar(45) DEFAULT NULL,
  `fondo` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idestatus`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_ventas_fact
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_ventas_fact` (
  `estatus` varchar(25) DEFAULT NULL,
  `idestatus` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Volcado de tabla adm_ventas_ope
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_ventas_ope` (
  `idestatus` int NOT NULL AUTO_INCREMENT,
  `estatus` varchar(255) DEFAULT NULL,
  `fondo` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idestatus`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;



# Volcado de tabla adm_ventas_prod
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_ventas_prod` (
  `idestatus` int NOT NULL AUTO_INCREMENT,
  `estatus` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idestatus`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;



# Volcado de tabla adm_ventas_prospectacion
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_ventas_prospectacion` (
  `idestatus` int NOT NULL AUTO_INCREMENT,
  `estatus` varchar(45) DEFAULT NULL,
  `fondo` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idestatus`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;



# Volcado de tabla adm_ventas_proyectos
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_ventas_proyectos` (
  `idventas_proyectos` int NOT NULL AUTO_INCREMENT,
  `idproyecto` int NOT NULL,
  `idejecutivo` int NOT NULL,
  PRIMARY KEY (`idventas_proyectos`)
) ENGINE=InnoDB AUTO_INCREMENT=2903 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_ventas_status_fact
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_ventas_status_fact` (
  `idventas_status_fact` int NOT NULL AUTO_INCREMENT,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idventas_status_fact`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_ventas_tipo_mob
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_ventas_tipo_mob` (
  `idventas_tipo_mob` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idventas_tipo_mob`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_ventas_tipos
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_ventas_tipos` (
  `idventas_tipos` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idventas_tipos`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_ventas_tipos_cant
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_ventas_tipos_cant` (
  `idventas_tipos_cant` int NOT NULL AUTO_INCREMENT,
  `idventas` int NOT NULL,
  `idventas_tipos_desc` int NOT NULL,
  PRIMARY KEY (`idventas_tipos_cant`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_ventas_tipos_desc
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_ventas_tipos_desc` (
  `idventas_tipos_desc` int NOT NULL AUTO_INCREMENT,
  `idventas_tipos` int NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idventas_tipos_desc`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_ventasall
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_ventasall` (
  `idventasall` int NOT NULL AUTO_INCREMENT,
  `idproyecto_sub` int NOT NULL,
  `idventas_tipos` int NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  PRIMARY KEY (`idventasall`)
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=latin1;



# Volcado de tabla adm_ventastabulador
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_ventastabulador` (
  `idtabulador` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(45) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `descuento` varchar(5) DEFAULT NULL,
  `pre_uni` decimal(11,2) NOT NULL,
  `pre_uni_cdesc` decimal(11,2) NOT NULL,
  `codigo` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`idtabulador`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;



# Volcado de tabla almacen
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `almacen` (
  `id_almacen` int NOT NULL AUTO_INCREMENT,
  `codigo` varchar(45) DEFAULT NULL,
  `id_region` int DEFAULT NULL,
  `id_estado` int DEFAULT NULL,
  `id_coordinador` int DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `observaciones` varchar(250) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `m2` varchar(45) DEFAULT NULL,
  `tipo_renta` varchar(45) DEFAULT NULL,
  `quien_renta` varchar(45) DEFAULT NULL,
  `monto` decimal(11,2) NOT NULL,
  `almacen_tmp` int NOT NULL DEFAULT '0',
  `foto` varchar(45) DEFAULT NULL,
  `restringir` int NOT NULL,
  `cent` int NOT NULL,
  `csal` int NOT NULL,
  `ctra` int NOT NULL,
  `cinv` int NOT NULL,
  `active` int NOT NULL DEFAULT '1',
  `poblacion` varchar(45) DEFAULT NULL,
  `colonia` varchar(45) DEFAULT NULL,
  `cp` varchar(10) DEFAULT NULL,
  `fecha_inicio_renta` varchar(10) DEFAULT NULL,
  `depto_garantia` decimal(11,2) DEFAULT NULL,
  `fecha_cierre` varchar(10) DEFAULT NULL,
  `dia_pago` int NOT NULL,
  `dia_alerta` int NOT NULL,
  `idproveedores` int DEFAULT NULL,
  `cap_tarimas` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_almacen`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=latin1;



# Volcado de tabla almacen_accesos
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `almacen_accesos` (
  `idalmacen_accesos` int NOT NULL AUTO_INCREMENT,
  `id_almacen` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idalmacen_accesos`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;



# Volcado de tabla almacen_correos
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `almacen_correos` (
  `idalmacen_correos` int NOT NULL AUTO_INCREMENT,
  `iduser` int NOT NULL,
  `id_almacen` int NOT NULL,
  PRIMARY KEY (`idalmacen_correos`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;



# Volcado de tabla almacen_fotos
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `almacen_fotos` (
  `idalmacen_fotos` int NOT NULL AUTO_INCREMENT,
  `id_almacen` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `tipo` int DEFAULT NULL,
  PRIMARY KEY (`idalmacen_fotos`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;



# Volcado de tabla carpetadoc
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carpetadoc` (
  `idcarpetadoc` int NOT NULL AUTO_INCREMENT,
  `idproyecto` int DEFAULT NULL,
  `carpeta` varchar(45) DEFAULT NULL,
  `estado` int NOT NULL,
  `idproyecto_sub` int NOT NULL,
  PRIMARY KEY (`idcarpetadoc`)
) ENGINE=InnoDB AUTO_INCREMENT=1729 DEFAULT CHARSET=latin1;



# Volcado de tabla catestados
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catestados` (
  `idestados` int NOT NULL AUTO_INCREMENT,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idestados`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;



# Volcado de tabla catestatus
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catestatus` (
  `idestatus` int NOT NULL AUTO_INCREMENT,
  `estatus` varchar(45) NOT NULL,
  `sumar` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`idestatus`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;



# Volcado de tabla catformato
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catformato` (
  `idformato` int NOT NULL AUTO_INCREMENT,
  `formato` varchar(128) NOT NULL,
  PRIMARY KEY (`idformato`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;



# Volcado de tabla catnivel
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catnivel` (
  `idnivel` int NOT NULL AUTO_INCREMENT,
  `nivel` varchar(45) NOT NULL,
  PRIMARY KEY (`idnivel`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;



# Volcado de tabla cattipoproyecto
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cattipoproyecto` (
  `idtipoproyecto` int NOT NULL AUTO_INCREMENT,
  `tipoproyecto` varchar(45) NOT NULL,
  `idventas_tipos` int NOT NULL,
  PRIMARY KEY (`idtipoproyecto`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;



# Volcado de tabla catzona
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catzona` (
  `idzona` int NOT NULL AUTO_INCREMENT,
  `siglas` varchar(2) DEFAULT NULL,
  `zona` varchar(45) NOT NULL,
  `numero` int NOT NULL,
  `no_requisicion` int NOT NULL,
  `transpaso_h` int NOT NULL,
  `recoleccion` int NOT NULL,
  PRIMARY KEY (`idzona`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;



# Volcado de tabla curriculum
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curriculum` (
  `idcurriculum` int NOT NULL AUTO_INCREMENT,
  `iduser` int NOT NULL,
  `edad` int NOT NULL,
  `fecha_nacimiento` varchar(45) DEFAULT NULL,
  `calle` varchar(100) DEFAULT NULL,
  `colonia` varchar(45) DEFAULT NULL,
  `codigo_postal` varchar(45) DEFAULT NULL,
  `delegacion` varchar(45) DEFAULT NULL,
  `cel_md` varchar(45) DEFAULT NULL,
  `cel_par` varchar(45) DEFAULT NULL,
  `cel_casa` varchar(45) DEFAULT NULL,
  `nombre_cel_alterno` varchar(100) DEFAULT NULL,
  `fecha_ingreso` varchar(45) DEFAULT NULL,
  `escolaridad` varchar(100) DEFAULT NULL,
  `seguro_social` varchar(45) DEFAULT NULL,
  `no_licencia` varchar(45) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `vigencia` varchar(45) DEFAULT NULL,
  `mecanica` int NOT NULL,
  `electricidad` int NOT NULL,
  `observaciones` varchar(900) DEFAULT NULL,
  `auto` int NOT NULL,
  `camioneta` int NOT NULL,
  `motocicleta` int NOT NULL,
  `montacarga` int NOT NULL,
  `camion` int NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `curp` varchar(45) DEFAULT NULL,
  `rfc` varchar(45) DEFAULT NULL,
  `sueldo` varchar(45) DEFAULT NULL,
  `puesto` varchar(45) DEFAULT NULL,
  `prestaciones` varchar(100) DEFAULT NULL,
  `idtipoempleado` int NOT NULL,
  `foto_ine` varchar(100) DEFAULT NULL,
  `tarjeta_sodexo` varchar(45) DEFAULT NULL,
  `tarjeta_tag` varchar(45) DEFAULT NULL,
  `tipo_sangre` varchar(45) DEFAULT NULL,
  `ine` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcurriculum`)
) ENGINE=InnoDB AUTO_INCREMENT=673 DEFAULT CHARSET=latin1;



# Volcado de tabla ejemplo
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ejemplo` (
  `id_ejemplo` bigint NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  `observaciones` text,
  PRIMARY KEY (`id_ejemplo`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;



# Volcado de tabla email
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email` (
  `idemail` int NOT NULL AUTO_INCREMENT,
  `idproyectotiendas` int DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idemail`)
) ENGINE=InnoDB AUTO_INCREMENT=9393 DEFAULT CHARSET=latin1;



# Volcado de tabla empaquetado
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empaquetado` (
  `idempaquetado` int NOT NULL AUTO_INCREMENT,
  `empaquetado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idempaquetado`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;



# Volcado de tabla folio
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `folio` (
  `idfolio` int NOT NULL AUTO_INCREMENT,
  `folio` varchar(45) DEFAULT NULL,
  `idalmacen` int NOT NULL,
  PRIMARY KEY (`idfolio`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;



# Volcado de tabla futelefonica
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `futelefonica` (
  `idfutelefonica` int NOT NULL AUTO_INCREMENT,
  `idtipo_material` int DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `numero` varchar(200) DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idfutelefonica`)
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=latin1;



# Volcado de tabla grupouser
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupouser` (
  `idgrupouser` int NOT NULL AUTO_INCREMENT,
  `idlider` int DEFAULT NULL,
  `idlider_reemplazo` int NOT NULL,
  `idtransporte` int NOT NULL,
  `cadena` varchar(45) DEFAULT NULL,
  `obsgeneral` varchar(200) DEFAULT NULL,
  `fecha` varchar(45) NOT NULL,
  PRIMARY KEY (`idgrupouser`)
) ENGINE=InnoDB AUTO_INCREMENT=27436 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;



# Volcado de tabla ifolio
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ifolio` (
  `idifolio` int NOT NULL AUTO_INCREMENT,
  `ifolio` varchar(45) DEFAULT NULL,
  `idalmacen` int NOT NULL,
  PRIMARY KEY (`idifolio`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;



# Volcado de tabla incidencias
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `incidencias` (
  `idincidencias` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idincidencias`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;



# Volcado de tabla incidencias_personal
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `incidencias_personal` (
  `idincidencias_personal` int NOT NULL AUTO_INCREMENT,
  `idincidencias` int DEFAULT NULL,
  `iduser` int DEFAULT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  `observaciones` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idincidencias_personal`)
) ENGINE=InnoDB AUTO_INCREMENT=5514 DEFAULT CHARSET=latin1;



# Volcado de tabla inventario_material
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario_material` (
  `idinventario_material` int NOT NULL AUTO_INCREMENT,
  `estado` int NOT NULL DEFAULT '1',
  `estado_telefonica` int NOT NULL DEFAULT '1',
  `idalmacen` int DEFAULT NULL,
  `idmaterialsolo` int DEFAULT NULL,
  `idcliente` int DEFAULT NULL,
  `idtipo_material` int DEFAULT NULL,
  `existencias` int NOT NULL,
  `idproyecto` int NOT NULL,
  `codigo` varchar(45) DEFAULT NULL,
  `descripcion` varchar(1000) DEFAULT NULL,
  `proveedor` varchar(45) DEFAULT NULL,
  `alto` decimal(11,2) NOT NULL,
  `ancho` decimal(11,2) NOT NULL,
  `profundo` decimal(11,2) NOT NULL,
  `m2` decimal(11,2) NOT NULL,
  `observaciones` tinytext,
  `ubicacion_material` varchar(45) DEFAULT NULL,
  `codigo_cliente` varchar(45) DEFAULT NULL,
  `fecha_entrada` varchar(10) DEFAULT NULL,
  `fecha_salida` varchar(10) DEFAULT NULL,
  `idunidad` int NOT NULL,
  `max` int DEFAULT '0',
  `min` int DEFAULT '0',
  `iduser` int NOT NULL,
  `fecha_rgt` varchar(10) DEFAULT NULL,
  `m3` decimal(11,2) NOT NULL,
  `folio` int NOT NULL,
  PRIMARY KEY (`idinventario_material`)
) ENGINE=InnoDB AUTO_INCREMENT=15022 DEFAULT CHARSET=latin1;



# Volcado de tabla inventario_material_prov
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario_material_prov` (
  `idinventario_material_prov` int NOT NULL AUTO_INCREMENT,
  `idinventario_material` int NOT NULL,
  `idproveedores` int NOT NULL,
  `costo` decimal(11,2) NOT NULL,
  PRIMARY KEY (`idinventario_material_prov`)
) ENGINE=InnoDB AUTO_INCREMENT=1201 DEFAULT CHARSET=latin1;



# Volcado de tabla inventario_material_serie
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario_material_serie` (
  `idinventario_material_serie` int NOT NULL AUTO_INCREMENT,
  `idinventario_material` int NOT NULL,
  `noserie` varchar(45) DEFAULT NULL,
  `idalmacen` int NOT NULL,
  `idmovimientos_almacen` int NOT NULL,
  `folio` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idinventario_material_serie`)
) ENGINE=InnoDB AUTO_INCREMENT=1293 DEFAULT CHARSET=latin1;



# Volcado de tabla lista_ordenes
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lista_ordenes` (
  `idlista_ordenes` int NOT NULL AUTO_INCREMENT,
  `idcliente` int DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `alarma` int DEFAULT NULL,
  PRIMARY KEY (`idlista_ordenes`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;



# Volcado de tabla material
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `material` (
  `idmaterial` int NOT NULL AUTO_INCREMENT,
  `idinventario_material` int DEFAULT NULL,
  `fotografia` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idmaterial`)
) ENGINE=InnoDB AUTO_INCREMENT=3660 DEFAULT CHARSET=latin1;



# Volcado de tabla materialsolo
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materialsolo` (
  `idmaterialsolo` int NOT NULL AUTO_INCREMENT,
  `nombre_material` varchar(45) DEFAULT NULL,
  `codigosat` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idmaterialsolo`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;



# Volcado de tabla materialsolo_user
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materialsolo_user` (
  `idmaterialsolo_user` int NOT NULL AUTO_INCREMENT,
  `iduser` int NOT NULL,
  `idmaterialsolo` int NOT NULL,
  PRIMARY KEY (`idmaterialsolo_user`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;



# Volcado de tabla md_agenda
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `md_agenda` (
  `idagenda` int NOT NULL AUTO_INCREMENT,
  `iduser` int NOT NULL,
  `fecha` varchar(10) DEFAULT NULL,
  `vista` int NOT NULL DEFAULT '1',
  `idagenda_color` int NOT NULL DEFAULT '1',
  `titulo` varchar(45) DEFAULT NULL,
  `descripcion` text,
  PRIMARY KEY (`idagenda`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;



# Volcado de tabla md_agenda_color
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `md_agenda_color` (
  `idagenda_color` int NOT NULL AUTO_INCREMENT,
  `color` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`idagenda_color`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;



# Volcado de tabla movimientos
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movimientos` (
  `idmovimientos` int NOT NULL AUTO_INCREMENT,
  `iduser` int NOT NULL,
  `fecha` varchar(10) DEFAULT NULL,
  `folio` varchar(9) DEFAULT NULL,
  `idalmacen` int NOT NULL,
  `entrego` varchar(45) DEFAULT NULL,
  `idtransporte` int NOT NULL,
  `observaciones` text,
  `descripcion` text,
  `costo` decimal(11,2) NOT NULL,
  `alarma` int NOT NULL,
  `tipo` varchar(1) NOT NULL,
  `iduser_material` int NOT NULL,
  `std_nip` int NOT NULL DEFAULT '0',
  `idmovimientos_nip` int NOT NULL,
  `migrar_user` int NOT NULL,
  PRIMARY KEY (`idmovimientos`)
) ENGINE=InnoDB AUTO_INCREMENT=445 DEFAULT CHARSET=latin1;



# Volcado de tabla movimientos_almacen
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movimientos_almacen` (
  `idmovimientos_almacen` int NOT NULL AUTO_INCREMENT,
  `fecha_movimiento` varchar(45) DEFAULT NULL,
  `idinventario_material` int NOT NULL,
  `idalmacen` int NOT NULL,
  `idmovimientos` int NOT NULL,
  `idpersonal_material` int NOT NULL,
  `idestados` int NOT NULL,
  `distribucion` int NOT NULL,
  `idproyecto` int NOT NULL,
  `iduser` int NOT NULL,
  `estadodistribucion` int NOT NULL,
  `alarma` int NOT NULL,
  `folio` varchar(45) DEFAULT NULL,
  `entrada` int DEFAULT NULL,
  `salida` int DEFAULT NULL,
  `transpaso` int DEFAULT NULL,
  `realizado` int NOT NULL,
  `herramienta` int NOT NULL,
  `inventario` int DEFAULT NULL,
  `tipo_envio` int DEFAULT NULL,
  `costo` decimal(11,2) DEFAULT NULL,
  `empaquetado` int DEFAULT NULL,
  `orden_compra` varchar(45) DEFAULT NULL,
  `entrega` varchar(100) DEFAULT NULL,
  `total` int NOT NULL DEFAULT '0',
  `almacen_destino` int DEFAULT NULL,
  `observaciones` varchar(300) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `nombre_proveedor` varchar(105) NOT NULL,
  `no_documento` varchar(105) NOT NULL,
  `lote_entrada` varchar(45) NOT NULL,
  `recibio` varchar(100) NOT NULL,
  `estado_salida` int NOT NULL,
  `estado_transpaso` int NOT NULL,
  `cant_transpaso` int NOT NULL,
  `idremisionesmaterial` int NOT NULL,
  `idcompras` int NOT NULL,
  `std_cedimd` int NOT NULL,
  `idproyecto_requi` int NOT NULL,
  `std_h` int NOT NULL DEFAULT '1',
  `std_h_nosuma` int NOT NULL DEFAULT '0',
  `idestatus_material` int NOT NULL,
  `folio_recoleccion` tinytext,
  PRIMARY KEY (`idmovimientos_almacen`),
  KEY `idinventario_material` (`idinventario_material`)
) ENGINE=InnoDB AUTO_INCREMENT=89423 DEFAULT CHARSET=latin1;



# Volcado de tabla movimientos_almacen_tel
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movimientos_almacen_tel` (
  `idmovimientos_almacen_tel` int NOT NULL AUTO_INCREMENT,
  `idmovimientos_almacen` int NOT NULL,
  `fecha` varchar(10) NOT NULL,
  `idinventario_material` int NOT NULL,
  `idregion` int NOT NULL,
  `idestatus_material` int NOT NULL,
  `cantidad` int NOT NULL,
  `rg_iduser` int DEFAULT NULL,
  `rg_fecha` varchar(10) DEFAULT NULL,
  `rg_hora` varchar(10) DEFAULT NULL,
  `estatus` tinyint(1) NOT NULL,
  `idproyectotiendas` int NOT NULL,
  PRIMARY KEY (`idmovimientos_almacen_tel`)
) ENGINE=InnoDB AUTO_INCREMENT=3261 DEFAULT CHARSET=utf8mb3;



# Volcado de tabla movimientos_nip
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movimientos_nip` (
  `idmovimientos_nip` int NOT NULL AUTO_INCREMENT,
  `iduser` int NOT NULL,
  `fecha` varchar(10) DEFAULT NULL,
  `hora` varchar(15) DEFAULT NULL,
  `folio` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idmovimientos_nip`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;



# Volcado de tabla movimientos_proyectos
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movimientos_proyectos` (
  `idmovimientos_proyectos` int NOT NULL AUTO_INCREMENT,
  `idproyecto` int NOT NULL,
  `idregion` int NOT NULL,
  `porcentaje` int NOT NULL,
  `idalmacen` int NOT NULL,
  `folio` varchar(45) DEFAULT NULL,
  `tipo` tinyint(1) NOT NULL,
  PRIMARY KEY (`idmovimientos_proyectos`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=latin1;



# Volcado de tabla movimientos_transpasos
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movimientos_transpasos` (
  `idmovimientos_transpasos` int NOT NULL AUTO_INCREMENT,
  `tiempo` varchar(45) DEFAULT NULL,
  `iduser` int NOT NULL,
  `cantidad` int NOT NULL,
  `idinventario_material` int NOT NULL,
  PRIMARY KEY (`idmovimientos_transpasos`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;



# Volcado de tabla movimientos_user
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movimientos_user` (
  `idmovimientos_user` int NOT NULL AUTO_INCREMENT,
  `tiempo` varchar(45) DEFAULT NULL,
  `fecha` varchar(10) DEFAULT NULL,
  `iduser` int NOT NULL,
  `iduser_entregar` int NOT NULL,
  `std_verificado` int NOT NULL,
  `iduser_entrega` int NOT NULL,
  PRIMARY KEY (`idmovimientos_user`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;



# Volcado de tabla movimientos_user_material
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movimientos_user_material` (
  `idmovimientos_user_material` int NOT NULL AUTO_INCREMENT,
  `idmovimientos_user` int NOT NULL,
  `idinventario_material` int NOT NULL,
  `cantidad` int NOT NULL,
  `std_ver` int NOT NULL,
  `cant_ver` int NOT NULL,
  PRIMARY KEY (`idmovimientos_user_material`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;



# Volcado de tabla movimientos_user_view
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movimientos_user_view` (
  `idmovimientos_user_view` int NOT NULL AUTO_INCREMENT,
  `idmovimientos_user` int NOT NULL,
  `iduser` int NOT NULL,
  PRIMARY KEY (`idmovimientos_user_view`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;



# Volcado de tabla noserie
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `noserie` (
  `idnoserie` int NOT NULL AUTO_INCREMENT,
  `idmovimientos_almacen` int DEFAULT NULL,
  `numero` varchar(45) DEFAULT NULL,
  `idmaterial` int NOT NULL,
  `estado` int NOT NULL,
  `idalmacen` int NOT NULL,
  PRIMARY KEY (`idnoserie`)
) ENGINE=InnoDB AUTO_INCREMENT=852 DEFAULT CHARSET=latin1;



# Volcado de tabla obsgenerales
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obsgenerales` (
  `idobsgenerales` int NOT NULL AUTO_INCREMENT,
  `fecha` varchar(45) DEFAULT NULL,
  `iduser` int NOT NULL,
  `observaciones` varchar(500) DEFAULT NULL,
  `odg` varchar(45) NOT NULL,
  `idmigracion` int NOT NULL,
  `iduseradd` int NOT NULL,
  `idgrupouser` int NOT NULL,
  PRIMARY KEY (`idobsgenerales`)
) ENGINE=InnoDB AUTO_INCREMENT=27563 DEFAULT CHARSET=latin1;



# Volcado de tabla obsgeneralesayudantes
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obsgeneralesayudantes` (
  `idobsgeneralesayudantes` int NOT NULL AUTO_INCREMENT,
  `idobsgenerales` int NOT NULL,
  `ayudantes` varchar(100) DEFAULT NULL,
  `iduser` int NOT NULL,
  PRIMARY KEY (`idobsgeneralesayudantes`)
) ENGINE=InnoDB AUTO_INCREMENT=6702 DEFAULT CHARSET=latin1;



# Volcado de tabla obsgeneralesproyectos
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obsgeneralesproyectos` (
  `idobsgeneralesproyectos` int NOT NULL AUTO_INCREMENT,
  `idproyecto` int NOT NULL,
  `idobsgenerales` int NOT NULL,
  PRIMARY KEY (`idobsgeneralesproyectos`)
) ENGINE=InnoDB AUTO_INCREMENT=32839 DEFAULT CHARSET=latin1;



# Volcado de tabla orden_trabajo
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orden_trabajo` (
  `idorden_trabajo` int NOT NULL AUTO_INCREMENT,
  `id_pv` varchar(45) DEFAULT NULL,
  `nombre_pv` varchar(45) DEFAULT NULL,
  `canal` varchar(45) DEFAULT NULL,
  `sub_canal` varchar(45) DEFAULT NULL,
  `proveeduria` varchar(45) DEFAULT NULL,
  `solicitante` varchar(45) DEFAULT NULL,
  `fecha_solicitud_proveedor` varchar(45) DEFAULT NULL,
  `fecha_instalacion` varchar(45) DEFAULT NULL,
  `estatus` varchar(45) DEFAULT NULL,
  `trabajo_realizar` varchar(45) DEFAULT NULL,
  `clasificacion_trabajo` varchar(45) DEFAULT NULL,
  `ptto` varchar(45) DEFAULT NULL,
  `proyecto` varchar(45) DEFAULT NULL,
  `determinante` varchar(45) DEFAULT NULL,
  `zona` varchar(45) DEFAULT NULL,
  `territorio` varchar(45) DEFAULT NULL,
  `cadena` varchar(45) DEFAULT NULL,
  `distribuidor` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `calle` varchar(100) DEFAULT NULL,
  `numero` varchar(45) DEFAULT NULL,
  `colonia` varchar(45) DEFAULT NULL,
  `cp` varchar(45) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `contacto_1` varchar(45) DEFAULT NULL,
  `celular_1` varchar(45) DEFAULT NULL,
  `contacto_2` varchar(45) DEFAULT NULL,
  `celular_2` varchar(45) DEFAULT NULL,
  `observaciones` varchar(400) DEFAULT NULL,
  `precio_cotizacion` varchar(45) NOT NULL,
  `facturado` varchar(45) NOT NULL,
  `alarma` int NOT NULL DEFAULT '0',
  `idcliente` int NOT NULL,
  `idproyecto` int DEFAULT NULL,
  `prioridad` int DEFAULT NULL,
  PRIMARY KEY (`idorden_trabajo`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;



# Volcado de tabla refresh
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `refresh` (
  `idrefresh` int NOT NULL AUTO_INCREMENT,
  `iduser` int NOT NULL,
  `tiempo` int NOT NULL,
  PRIMARY KEY (`idrefresh`)
) ENGINE=InnoDB AUTO_INCREMENT=329 DEFAULT CHARSET=utf8mb3;



# Volcado de tabla relclientetieneusuario
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relclientetieneusuario` (
  `idrelclientetieneusuario` int NOT NULL AUTO_INCREMENT,
  `idusuario` int DEFAULT NULL,
  `idcliente` int DEFAULT NULL,
  PRIMARY KEY (`idrelclientetieneusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;



# Volcado de tabla relestadoregion
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relestadoregion` (
  `idrelestadoregion` int NOT NULL AUTO_INCREMENT,
  `idestado` int DEFAULT NULL,
  `idregion` int DEFAULT NULL,
  PRIMARY KEY (`idrelestadoregion`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;



# Volcado de tabla relgrupouser
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relgrupouser` (
  `idrelgrupouser` int NOT NULL AUTO_INCREMENT,
  `idlider` int DEFAULT NULL,
  `iduser` int DEFAULT NULL,
  `idtienda` int NOT NULL,
  PRIMARY KEY (`idrelgrupouser`)
) ENGINE=InnoDB AUTO_INCREMENT=14051 DEFAULT CHARSET=latin1;



# Volcado de tabla relimagendistribucion
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relimagendistribucion` (
  `idrelimagendistribucion` int NOT NULL AUTO_INCREMENT,
  `idgaleria` int NOT NULL,
  `idrepartirmaterial` int NOT NULL,
  `idincidencias` int NOT NULL,
  PRIMARY KEY (`idrelimagendistribucion`),
  KEY `idx_idrepartirmaterial` (`idrepartirmaterial`)
) ENGINE=InnoDB AUTO_INCREMENT=226559 DEFAULT CHARSET=latin1;



# Volcado de tabla relimagenpreguntas
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relimagenpreguntas` (
  `idrelimagenpreguntas` int NOT NULL AUTO_INCREMENT,
  `idgaleria` int DEFAULT NULL,
  `idrepartirpreguntas` int DEFAULT NULL,
  PRIMARY KEY (`idrelimagenpreguntas`),
  KEY `idx_idrepartirpreguntas` (`idrepartirpreguntas`)
) ENGINE=InnoDB AUTO_INCREMENT=464526 DEFAULT CHARSET=big5;



# Volcado de tabla relmensajeusuarios
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relmensajeusuarios` (
  `idrelmensajeusuarios` int NOT NULL AUTO_INCREMENT,
  `idmensaje` int DEFAULT NULL,
  `idusuario` int DEFAULT NULL,
  PRIMARY KEY (`idrelmensajeusuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=1803 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;



# Volcado de tabla relproyectosarchivos
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relproyectosarchivos` (
  `idrelproyectosarchivos` int NOT NULL AUTO_INCREMENT,
  `idproyecto` int DEFAULT NULL,
  `archivo` varchar(45) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `carpeta` int NOT NULL,
  `estadocot` int NOT NULL,
  `idproyectotiendas` int NOT NULL,
  `idproyecto_sub` int NOT NULL,
  PRIMARY KEY (`idrelproyectosarchivos`),
  KEY `idx_idproyecto` (`idproyecto`)
) ENGINE=InnoDB AUTO_INCREMENT=11032 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;



# Volcado de tabla relproyectotienefutelefonia
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relproyectotienefutelefonia` (
  `idrelproyectotienefutelefonia` int NOT NULL AUTO_INCREMENT,
  `idfutelefonica` int DEFAULT NULL,
  `costo` decimal(11,2) DEFAULT NULL,
  `idorden_trabajo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idrelproyectotienefutelefonia`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;



# Volcado de tabla relproyectotienetiendas
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relproyectotienetiendas` (
  `idproyectotiendas` int NOT NULL AUTO_INCREMENT,
  `idtienda` int NOT NULL,
  `idproyecto` int NOT NULL,
  `idestatus` int NOT NULL DEFAULT '1',
  `fechavisita` varchar(10) DEFAULT NULL,
  `observacion` text,
  `fechareal` varchar(10) DEFAULT NULL,
  `recibio` varchar(256) DEFAULT NULL,
  `contabilidad` varchar(6) DEFAULT NULL,
  `nomina` varchar(6) DEFAULT NULL,
  `revisado` tinyint DEFAULT '0',
  `medida` varchar(8) DEFAULT '',
  `tramos` varchar(8) DEFAULT '',
  `cronograma` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  `idgrupo` int DEFAULT NULL,
  `duracion` int NOT NULL DEFAULT '1',
  `mostrarsemana` tinyint(1) NOT NULL DEFAULT '0',
  `costo` decimal(11,2) DEFAULT NULL,
  `campos_add` text,
  `id_pv` varchar(45) DEFAULT NULL,
  `nombre_pv` varchar(100) DEFAULT NULL,
  `canal` varchar(45) DEFAULT NULL,
  `sub_canal` varchar(45) DEFAULT NULL,
  `proveeduria` varchar(45) DEFAULT NULL,
  `solicitante` varchar(45) DEFAULT NULL,
  `fecha_solicitud_proveedor` varchar(45) DEFAULT NULL,
  `fecha_instalacion` varchar(45) DEFAULT NULL,
  `estatus` varchar(45) DEFAULT NULL,
  `trabajo_realizar` varchar(45) DEFAULT NULL,
  `clasificacion_trabajo` varchar(100) DEFAULT NULL,
  `ptto` varchar(45) DEFAULT NULL,
  `proyecto` varchar(100) DEFAULT NULL,
  `determinante` varchar(45) DEFAULT NULL,
  `zona` varchar(45) DEFAULT NULL,
  `territorio` varchar(45) DEFAULT NULL,
  `cadena` varchar(45) DEFAULT NULL,
  `distribuidor` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `calle` varchar(45) DEFAULT NULL,
  `numero` varchar(45) DEFAULT NULL,
  `colonia` varchar(45) DEFAULT NULL,
  `cp` varchar(45) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `contacto_1` varchar(45) DEFAULT NULL,
  `celular_1` varchar(45) DEFAULT NULL,
  `contacto_2` varchar(45) DEFAULT NULL,
  `celular_2` varchar(45) DEFAULT NULL,
  `observaciones` text,
  `precio_cotizacion` decimal(11,2) DEFAULT NULL,
  `facturado` varchar(45) NOT NULL,
  `alarma` int NOT NULL DEFAULT '0',
  `idcliente` int DEFAULT NULL,
  `prioridad` int NOT NULL,
  `idordentrabajo` int NOT NULL DEFAULT '0',
  `asignargrupo` int NOT NULL DEFAULT '0',
  `ok` int NOT NULL DEFAULT '0',
  `clientechecar` int NOT NULL DEFAULT '0',
  `fechainstalacion` varchar(45) DEFAULT NULL,
  `idimplementador` int DEFAULT '0',
  `actividad` int NOT NULL,
  `fechafachada` varchar(45) NOT NULL,
  `fechafinal` varchar(45) NOT NULL,
  `fechasincronizar` varchar(45) NOT NULL,
  `idtelefonicadoc` int NOT NULL,
  `noproyecto` varchar(45) DEFAULT NULL,
  `horainstalacion` varchar(45) DEFAULT NULL,
  `nomina_verificado` int NOT NULL,
  `estado_fotos_datos` int NOT NULL,
  `pdvspecial` int NOT NULL,
  `idmovimientos` int NOT NULL,
  `idalmacendes` int NOT NULL,
  `idbodega` int NOT NULL,
  `okcoor` int NOT NULL,
  `actividad_fin` int NOT NULL,
  `idventastwc` int NOT NULL,
  `std_produccion` int NOT NULL,
  `no_bloque` int NOT NULL,
  `idtipo_proyecto` int NOT NULL,
  `rg_fecha_okcoor` varchar(25) DEFAULT NULL,
  `rg_iduser_okcoor` int NOT NULL,
  `rg_fecha_revisado` varchar(25) DEFAULT NULL,
  `rg_iduser_revisado` int NOT NULL,
  `horasincronizar` varchar(10) DEFAULT NULL,
  `std_recoleccion` tinyint(1) NOT NULL,
  `idusersincronizar` int NOT NULL,
  `tipo_actividad` char(2) DEFAULT NULL,
  `obs_cedimd` text,
  `std_tabulador` int NOT NULL,
  `std_pdv` tinyint(1) NOT NULL,
  `std_observaciones` tinytext,
  `std_fecha` varchar(10) DEFAULT NULL,
  `fecha_odt_rg` varchar(10) DEFAULT NULL,
  `hora_odt_rg` varchar(10) DEFAULT NULL,
  `iduser_odt_rg` int NOT NULL,
  PRIMARY KEY (`idproyectotiendas`),
  KEY `idx_idtienda` (`idtienda`),
  KEY `idx_idproyecto` (`idproyecto`)
) ENGINE=InnoDB AUTO_INCREMENT=186088 DEFAULT CHARSET=utf8mb3;



# Volcado de tabla relproyectotieneusuario
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relproyectotieneusuario` (
  `idusuarioproyecto` int NOT NULL AUTO_INCREMENT,
  `idproyecto` int NOT NULL,
  `idusuario` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `visto` int NOT NULL DEFAULT '1',
  `ver` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`idusuarioproyecto`)
) ENGINE=InnoDB AUTO_INCREMENT=53595 DEFAULT CHARSET=utf8mb3;



# Volcado de tabla reltiendastransporte
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reltiendastransporte` (
  `idreltiendastransporte` int NOT NULL AUTO_INCREMENT,
  `idtransporte` int NOT NULL,
  `idtienda` int NOT NULL,
  `idgrupouser` int NOT NULL,
  PRIMARY KEY (`idreltiendastransporte`)
) ENGINE=InnoDB AUTO_INCREMENT=59155 DEFAULT CHARSET=latin1;



# Volcado de tabla remisionesdoc
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `remisionesdoc` (
  `idremisionesdoc` int NOT NULL AUTO_INCREMENT,
  `idremision` varchar(45) DEFAULT NULL,
  `nombredoc` varchar(45) DEFAULT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idremisionesdoc`)
) ENGINE=InnoDB AUTO_INCREMENT=1131 DEFAULT CHARSET=latin1;



# Volcado de tabla repartirmaterial
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repartirmaterial` (
  `idrepartirmaterial` int NOT NULL AUTO_INCREMENT,
  `idproyecto` int DEFAULT NULL,
  `idrelproyectotienetiendas` int DEFAULT NULL,
  `idinventario_material` int DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `estado` int NOT NULL DEFAULT '0',
  `cantidad_salida` int DEFAULT NULL,
  `observaciones` varchar(200) DEFAULT NULL,
  `estadopdv` int DEFAULT '0',
  `pregunta` varchar(200) NOT NULL,
  `tipopregunta` int NOT NULL,
  `idmovimientos_almacen` int NOT NULL,
  `numeracion` int NOT NULL,
  `folio` varchar(10) DEFAULT NULL,
  `tipo` char(2) DEFAULT NULL,
  `idrepartirmaterial_rel` int NOT NULL,
  `titulo1` tinytext,
  `titulo2` tinytext,
  `color1` varchar(10) DEFAULT NULL,
  `color2` varchar(10) DEFAULT NULL,
  `std1` int NOT NULL,
  `std2` int NOT NULL,
  `titulo3` tinytext,
  `color3` varchar(10) DEFAULT NULL,
  `titulo4` tinytext,
  `color4` varchar(10) DEFAULT NULL,
  `std3` int NOT NULL,
  `std4` int NOT NULL,
  PRIMARY KEY (`idrepartirmaterial`),
  KEY `idx_idrelproyectotienetiendas` (`idrelproyectotienetiendas`)
) ENGINE=InnoDB AUTO_INCREMENT=846185 DEFAULT CHARSET=latin1;



# Volcado de tabla repartirmaterial_charolas
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repartirmaterial_charolas` (
  `idcharolas` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `tipo` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`idcharolas`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;



# Volcado de tabla repartirmaterial_com
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repartirmaterial_com` (
  `idrepartirmaterial_com` int NOT NULL AUTO_INCREMENT,
  `idrepartirmaterial` int NOT NULL,
  `comentario` text,
  `rg_iduser` int NOT NULL,
  PRIMARY KEY (`idrepartirmaterial_com`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb3;



# Volcado de tabla repartirmaterial_incidencias
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repartirmaterial_incidencias` (
  `idrepartirmaterial_incidencias` int NOT NULL AUTO_INCREMENT,
  `idrepartirmaterial` int NOT NULL,
  `idincidencias` int NOT NULL,
  `descripcion` tinytext,
  PRIMARY KEY (`idrepartirmaterial_incidencias`)
) ENGINE=InnoDB AUTO_INCREMENT=3115 DEFAULT CHARSET=utf8mb3;



# Volcado de tabla repartirpreguntas
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repartirpreguntas` (
  `idrepartirpreguntas` int NOT NULL AUTO_INCREMENT,
  `idproyecto` int DEFAULT NULL,
  `idrelproyectotienetiendas` int DEFAULT NULL,
  `pregunta` varchar(100) DEFAULT NULL,
  `tipopregunta` varchar(100) DEFAULT NULL,
  `carpeta` varchar(45) DEFAULT NULL,
  `imagen` varchar(1000) DEFAULT NULL,
  `estado` int NOT NULL,
  `editar` int NOT NULL,
  `no` int NOT NULL,
  PRIMARY KEY (`idrepartirpreguntas`),
  KEY `idx_idrelproyectotienetiendas` (`idrelproyectotienetiendas`)
) ENGINE=InnoDB AUTO_INCREMENT=4111399 DEFAULT CHARSET=latin1;



# Volcado de tabla repartirpreguntas_produccion
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repartirpreguntas_produccion` (
  `idrepartirpreguntas_produccion` int NOT NULL AUTO_INCREMENT,
  `idproyecto_materiales` int NOT NULL,
  `idrepartirpreguntas_select` int NOT NULL,
  `orden` int NOT NULL,
  PRIMARY KEY (`idrepartirpreguntas_produccion`)
) ENGINE=InnoDB AUTO_INCREMENT=738 DEFAULT CHARSET=latin1;



# Volcado de tabla repartirpreguntas_select
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repartirpreguntas_select` (
  `idrepartirpreguntas_select` int NOT NULL AUTO_INCREMENT,
  `idproyecto` int NOT NULL,
  `idrepartirpreguntas_no` int NOT NULL,
  `no` int NOT NULL,
  PRIMARY KEY (`idrepartirpreguntas_select`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=latin1;



# Volcado de tabla sessions
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(50) NOT NULL DEFAULT '',
  `payload` text,
  `last_activity` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;



# Volcado de tabla sfolio
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sfolio` (
  `idsfolio` int NOT NULL AUTO_INCREMENT,
  `sfolio` varchar(45) DEFAULT NULL,
  `idalmacen` int DEFAULT NULL,
  PRIMARY KEY (`idsfolio`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;



# Volcado de tabla tabulador
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabulador` (
  `idtabulador` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtabulador`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;



# Volcado de tabla tabulador_pdv
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabulador_pdv` (
  `idtabulador_pdv` int NOT NULL AUTO_INCREMENT,
  `idproyectotiendas` int NOT NULL,
  `idtabulador_telefonica` int NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` decimal(11,2) NOT NULL,
  `total` decimal(11,2) NOT NULL,
  PRIMARY KEY (`idtabulador_pdv`)
) ENGINE=InnoDB AUTO_INCREMENT=3023 DEFAULT CHARSET=utf8mb3;



# Volcado de tabla tabulador_telefonica
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabulador_telefonica` (
  `idtabulador_telefonica` int NOT NULL AUTO_INCREMENT,
  `idtabulador` int NOT NULL,
  `descripcion` text NOT NULL,
  `unidad` varchar(45) NOT NULL,
  `precio` decimal(11,2) DEFAULT NULL,
  `estatus` tinyint(1) NOT NULL,
  PRIMARY KEY (`idtabulador_telefonica`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8mb3;



# Volcado de tabla tb_groups
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_groups` (
  `group_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `level` int DEFAULT NULL,
  `area` varchar(45) DEFAULT NULL,
  `idempresa` int NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;



# Volcado de tabla tb_groups_access
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_groups_access` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int DEFAULT NULL,
  `module_id` int DEFAULT NULL,
  `access_data` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9431 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;



# Volcado de tabla tb_logs
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_logs` (
  `auditID` int NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(50) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `task` varchar(50) DEFAULT NULL,
  `note` text,
  `logdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`auditID`)
) ENGINE=InnoDB AUTO_INCREMENT=2992 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;



# Volcado de tabla tb_menu
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_menu` (
  `menu_id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `menu_name` varchar(100) DEFAULT NULL,
  `menu_type` char(10) DEFAULT NULL,
  `role_id` varchar(100) DEFAULT NULL,
  `deep` smallint DEFAULT NULL,
  `ordering` int DEFAULT NULL,
  `position` enum('top','sidebar','both') DEFAULT NULL,
  `menu_icons` varchar(30) DEFAULT NULL,
  `active` enum('0','1') DEFAULT '1',
  `access_data` text,
  `allow_guest` enum('0','1') DEFAULT '0',
  `menu_lang` text,
  `estado` enum('0','1') DEFAULT '0',
  `sinmodule` enum('0','1') DEFAULT '0',
  `moduletitle` varchar(45) DEFAULT NULL,
  `module_id` int NOT NULL,
  `status` enum('md','twc','admon') DEFAULT 'md',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;



# Volcado de tabla tb_menu_access_group
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_menu_access_group` (
  `idaccessgroup` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `menu_id` int NOT NULL,
  `access_data` text,
  PRIMARY KEY (`idaccessgroup`)
) ENGINE=InnoDB AUTO_INCREMENT=2402 DEFAULT CHARSET=latin1;



# Volcado de tabla tb_module
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_module` (
  `module_id` int NOT NULL AUTO_INCREMENT,
  `module_name` varchar(100) DEFAULT NULL,
  `module_title` varchar(100) DEFAULT NULL,
  `module_note` varchar(255) DEFAULT NULL,
  `module_author` varchar(100) DEFAULT NULL,
  `module_created` timestamp NULL DEFAULT NULL,
  `module_desc` text,
  `module_db` varchar(255) DEFAULT NULL,
  `module_db_key` varchar(100) DEFAULT NULL,
  `module_type` enum('master','report','proccess','core','generic','addon') DEFAULT 'master',
  `module_config` longtext,
  `module_lang` text,
  `idempresa` int NOT NULL,
  `icon` varchar(45) DEFAULT NULL,
  `orden` int NOT NULL,
  `std_ver` int NOT NULL,
  `std_editar` int NOT NULL,
  `std_eliminar` int NOT NULL,
  `std_crear` int NOT NULL,
  `std_pdf` int NOT NULL,
  `std_excel` int NOT NULL,
  `std_editarfactura` int NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;



# Volcado de tabla tb_pages
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_pages` (
  `pageID` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `note` text,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `filename` varchar(50) DEFAULT NULL,
  `status` enum('enable','disable') DEFAULT 'enable',
  `access` text,
  `allow_guest` enum('0','1') DEFAULT '0',
  `template` enum('frontend','backend') DEFAULT 'frontend',
  `metakey` varchar(255) DEFAULT NULL,
  `metadesc` text,
  PRIMARY KEY (`pageID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;



# Volcado de tabla tb_users
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `iddirecciones` int NOT NULL,
  `idpuesto` int NOT NULL,
  `group_id` int DEFAULT NULL,
  `idcuentas` int NOT NULL,
  `username` varchar(100) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `password` varchar(64) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `login_attempt` tinyint DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reminder` varchar(64) DEFAULT NULL,
  `activation` varchar(50) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `last_activity` int NOT NULL DEFAULT '0',
  `rfc` varchar(45) DEFAULT NULL,
  `domicilio` varchar(100) DEFAULT NULL,
  `telefono1` varchar(25) DEFAULT NULL,
  `telefono2` varchar(25) DEFAULT NULL,
  `contacto` varchar(45) DEFAULT NULL,
  `idzona` int DEFAULT NULL,
  `idestado` int DEFAULT NULL,
  `idcliente` int DEFAULT '0',
  `idejecutivo` int NOT NULL DEFAULT '0',
  `idgrupouser` int DEFAULT NULL,
  `version_movil` int NOT NULL,
  `version` varchar(45) NOT NULL,
  `group_adm` int DEFAULT NULL,
  `dias_credito` int NOT NULL,
  `abreviatura` varchar(45) DEFAULT NULL,
  `correo` int NOT NULL DEFAULT '1',
  `ping` text,
  `web` tinytext,
  `std_md` int NOT NULL,
  `no_prov` varchar(45) DEFAULT NULL,
  `plat_adm` tinytext,
  `onesignal` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=954 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;



# Volcado de tabla tb_users_cursos
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_users_cursos` (
  `idusers_cursos` int NOT NULL AUTO_INCREMENT,
  `fecha` varchar(10) DEFAULT NULL,
  `descripcion` tinytext,
  PRIMARY KEY (`idusers_cursos`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;



# Volcado de tabla tb_users_cursos_user
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_users_cursos_user` (
  `idusers_cursos_user` int NOT NULL AUTO_INCREMENT,
  `idusers_cursos` int NOT NULL,
  `iduser` int NOT NULL,
  PRIMARY KEY (`idusers_cursos_user`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;



# Volcado de tabla tblasignarproyecto
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblasignarproyecto` (
  `idasignarproyecto` int NOT NULL AUTO_INCREMENT,
  `idproyecto` int DEFAULT NULL,
  `idtipoproyecto` int NOT NULL,
  `idproyecto_sub` int NOT NULL,
  PRIMARY KEY (`idasignarproyecto`)
) ENGINE=InnoDB AUTO_INCREMENT=5840 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;



# Volcado de tabla tblcarpetas
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcarpetas` (
  `idtblcarpetas` int NOT NULL AUTO_INCREMENT,
  `idproyectotiendas` int NOT NULL,
  `carpeta` varchar(255) DEFAULT NULL,
  `sub` varchar(45) NOT NULL,
  PRIMARY KEY (`idtblcarpetas`),
  KEY `idx_idproyectotiendas` (`idproyectotiendas`)
) ENGINE=InnoDB AUTO_INCREMENT=219760 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;



# Volcado de tabla tblchat
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblchat` (
  `idchat` int NOT NULL AUTO_INCREMENT,
  `idusuario` int NOT NULL,
  `mensaje` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`idchat`,`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;



# Volcado de tabla tblcliente
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcliente` (
  `idcliente` int NOT NULL AUTO_INCREMENT,
  `razonsocial` varchar(128) NOT NULL,
  `rfc` varchar(45) NOT NULL,
  `domicilio` text NOT NULL,
  `telefono1` varchar(45) DEFAULT NULL,
  `telefono2` varchar(45) DEFAULT NULL,
  `contacto` varchar(256) DEFAULT NULL,
  `mail` varchar(128) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '1',
  `usuario` varchar(64) NOT NULL,
  `contrasenia` varchar(64) NOT NULL,
  `avatar` varchar(128) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;



# Volcado de tabla tblconducir
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblconducir` (
  `idconducir` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idconducir`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;



# Volcado de tabla tblgaleria
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblgaleria` (
  `idgaleria` int NOT NULL AUTO_INCREMENT,
  `idproyectotiendas` int NOT NULL,
  `fotografia` varchar(128) NOT NULL,
  `fechahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `enreporte` tinyint DEFAULT '0',
  `antes` varchar(100) DEFAULT '0',
  `url` varchar(200) DEFAULT NULL,
  `idtblcarpetas` int NOT NULL,
  PRIMARY KEY (`idgaleria`),
  KEY `idx_idproyectotiendas` (`idproyectotiendas`)
) ENGINE=InnoDB AUTO_INCREMENT=1078489 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;



# Volcado de tabla tblgrupotienda
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblgrupotienda` (
  `idgrupotienda` int NOT NULL AUTO_INCREMENT,
  `nombregrupo` varchar(128) DEFAULT NULL,
  `domicilio` text,
  `telefono1` varchar(45) DEFAULT NULL,
  `telefono2` varchar(45) DEFAULT NULL,
  `contacto` varchar(256) DEFAULT NULL,
  `mail` varchar(128) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`idgrupotienda`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;



# Volcado de tabla tblmensaje
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblmensaje` (
  `idmensaje` int NOT NULL AUTO_INCREMENT,
  `idproyecto` int NOT NULL,
  `fechahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `titulo` varchar(128) DEFAULT NULL,
  `mensaje` text NOT NULL,
  `enviado` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`idmensaje`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;



# Volcado de tabla tblpagina
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblpagina` (
  `idpagina` int NOT NULL AUTO_INCREMENT,
  `idreporte` int NOT NULL,
  `nsecciones` int DEFAULT NULL,
  `leftup` varchar(45) DEFAULT NULL,
  `leftupc` varchar(45) DEFAULT NULL,
  `rightup` varchar(45) DEFAULT NULL,
  `rightupc` varchar(45) DEFAULT NULL,
  `centerup` varchar(45) DEFAULT NULL,
  `cnterupc` varchar(45) DEFAULT NULL,
  `leftbottom` varchar(45) DEFAULT NULL,
  `leftbottomc` varchar(45) DEFAULT NULL,
  `centerbottom` varchar(45) DEFAULT NULL,
  `centerbottomc` varchar(45) DEFAULT NULL,
  `rightbottom` varchar(45) DEFAULT NULL,
  `rightbottomc` varchar(45) DEFAULT NULL,
  `panel1_0` varchar(45) DEFAULT NULL,
  `panel1_0type` varchar(45) DEFAULT NULL,
  `panel1_1` varchar(45) DEFAULT NULL,
  `panel1_1type` varchar(45) DEFAULT NULL,
  `panel1_2` varchar(45) DEFAULT NULL,
  `panel1_2type` varchar(45) DEFAULT NULL,
  `panel1_3` varchar(45) DEFAULT NULL,
  `panel1_3type` varchar(45) DEFAULT NULL,
  `panel1_4` varchar(45) DEFAULT NULL,
  `panel1_4type` varchar(45) DEFAULT NULL,
  `pagina` int DEFAULT NULL,
  `fondo` tinyint DEFAULT '1',
  `centro` varchar(45) DEFAULT NULL,
  `centrotexto` varchar(45) DEFAULT NULL,
  `tamano_leftup` varchar(5) DEFAULT NULL,
  `tamano_centerup` varchar(5) DEFAULT NULL,
  `tamano_rightup` varchar(5) DEFAULT NULL,
  `tamano_centro` varchar(5) DEFAULT NULL,
  `tamano_leftbottom` varchar(5) DEFAULT NULL,
  `tamano_centerbottom` varchar(5) DEFAULT NULL,
  `tamano_rightbottom` varchar(5) DEFAULT NULL,
  `letra_leftup` varchar(45) DEFAULT NULL,
  `letra_centerup` varchar(45) DEFAULT NULL,
  `letra_rightup` varchar(45) DEFAULT NULL,
  `letra_centro` varchar(45) DEFAULT NULL,
  `letra_leftbottom` varchar(45) DEFAULT NULL,
  `letra_centerbottom` varchar(45) DEFAULT NULL,
  `letra_rightbottom` varchar(45) DEFAULT NULL,
  `comment_top` varchar(45) DEFAULT NULL,
  `font_comment_top` varchar(45) DEFAULT NULL,
  `size_comment_top` varchar(10) DEFAULT NULL,
  `comment_bottom` varchar(45) DEFAULT NULL,
  `font_comment_bottom` varchar(45) DEFAULT NULL,
  `size_comment_bottom` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idpagina`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;



# Volcado de tabla tblplantillareporte
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblplantillareporte` (
  `idplantillareporte` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(128) NOT NULL,
  `nsecciones` int NOT NULL DEFAULT '1',
  `leftup` int DEFAULT '0',
  `centerup` int DEFAULT '0',
  `rightup` int DEFAULT '0',
  `leftbottom` int DEFAULT '0',
  `centerbottom` int DEFAULT '0',
  `rightbottom` int DEFAULT '0',
  `textofijolu` varchar(128) NOT NULL DEFAULT '',
  `textofijocu` varchar(128) NOT NULL DEFAULT '',
  `textofijoru` varchar(128) NOT NULL DEFAULT '',
  `textofijolb` varchar(128) NOT NULL DEFAULT '',
  `textofijocb` varchar(128) NOT NULL DEFAULT '',
  `textofijorb` varchar(128) NOT NULL DEFAULT '',
  `especial` int NOT NULL,
  `idcliente` int NOT NULL,
  `idproyecto` int NOT NULL,
  `centro` int DEFAULT '0',
  `textofijocentro` varchar(128) NOT NULL,
  PRIMARY KEY (`idplantillareporte`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;



# Volcado de tabla tblplantillatipo
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblplantillatipo` (
  `idplantillatipo` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idplantillatipo`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;



# Volcado de tabla tblproyecto
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblproyecto` (
  `idproyecto` int NOT NULL AUTO_INCREMENT,
  `activo` tinyint(1) DEFAULT '1',
  `verificar` tinyint(1) NOT NULL,
  `show_costo` tinyint(1) NOT NULL DEFAULT '0',
  `cotizacion` tinyint(1) NOT NULL DEFAULT '0',
  `estado_comprimir` tinyint(1) NOT NULL,
  `idempresa` int NOT NULL,
  `idcliente` int NOT NULL,
  `idgrupotienda` int NOT NULL,
  `subcliente` varchar(100) NOT NULL,
  `numproyecto` varchar(150) DEFAULT NULL,
  `nombre` varchar(150) DEFAULT NULL,
  `nopdv` varchar(45) DEFAULT NULL,
  `contador` varchar(45) DEFAULT NULL,
  `autorizado` varchar(2) NOT NULL,
  `fechainicio` date DEFAULT NULL,
  `fechafin` date DEFAULT NULL,
  `avance` double DEFAULT '0',
  `observacion` text NOT NULL,
  `status_cotizacion` tinyint(1) NOT NULL DEFAULT '0',
  `perm_client_act_dist` tinyint(1) NOT NULL,
  `estadoadmin` tinyint(1) NOT NULL,
  `idtelefonica` tinyint(1) NOT NULL DEFAULT '0',
  `Completo` tinyint(1) NOT NULL DEFAULT '0',
  `actividad` tinyint(1) NOT NULL,
  `iduser` int NOT NULL,
  `estado_cedimd` int NOT NULL,
  `idproveedor_twc` int NOT NULL,
  `anio` int NOT NULL,
  `idmes` tinyint NOT NULL,
  `fecha` varchar(10) DEFAULT NULL,
  `idestatus_venta` int NOT NULL,
  `std_oportunidad` tinyint(1) NOT NULL,
  `idestatus_facturado` tinyint(1) NOT NULL,
  `idestatus_pros` tinyint(1) NOT NULL,
  `idestatus_ante` tinyint(1) NOT NULL,
  `idestatus_prod` tinyint(1) NOT NULL,
  `type_manto` tinyint(1) DEFAULT NULL,
  `migrar` tinyint(1) NOT NULL,
  PRIMARY KEY (`idproyecto`)
) ENGINE=InnoDB AUTO_INCREMENT=2892 DEFAULT CHARSET=utf8mb3;



# Volcado de tabla tblproyecto_actividad
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblproyecto_actividad` (
  `idproyecto_actividad` int NOT NULL AUTO_INCREMENT,
  `idproyecto` int NOT NULL,
  `actividad` varchar(1) NOT NULL,
  PRIMARY KEY (`idproyecto_actividad`)
) ENGINE=InnoDB AUTO_INCREMENT=3945 DEFAULT CHARSET=latin1;



# Volcado de tabla tblproyecto_bloque
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblproyecto_bloque` (
  `idproyecto_bloque` int NOT NULL AUTO_INCREMENT,
  `idproyecto` int NOT NULL,
  `bloque` int NOT NULL,
  `std_completo` int NOT NULL,
  PRIMARY KEY (`idproyecto_bloque`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;



# Volcado de tabla tblproyecto_comentarios
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblproyecto_comentarios` (
  `idproyecto_comentarios` int NOT NULL AUTO_INCREMENT,
  `idproyecto` int NOT NULL,
  `iduser` int NOT NULL,
  `fecha` varchar(10) DEFAULT NULL,
  `hora` varchar(10) DEFAULT NULL,
  `comentario` tinytext,
  `idproyecto_comentarios_tipo` tinyint NOT NULL,
  `id` int NOT NULL,
  PRIMARY KEY (`idproyecto_comentarios`)
) ENGINE=InnoDB AUTO_INCREMENT=2292 DEFAULT CHARSET=utf8mb3;



# Volcado de tabla tblproyecto_comentarios_file
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblproyecto_comentarios_file` (
  `idproyecto_comentarios_file` int NOT NULL AUTO_INCREMENT,
  `idproyecto_comentarios` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `url` tinytext,
  PRIMARY KEY (`idproyecto_comentarios_file`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb3;



# Volcado de tabla tblproyecto_comentarios_tipo
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblproyecto_comentarios_tipo` (
  `idproyecto_comentarios_tipo` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(25) DEFAULT NULL,
  `icono` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idproyecto_comentarios_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;



# Volcado de tabla tblproyecto_contactos
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblproyecto_contactos` (
  `idproyecto_contactos` int NOT NULL AUTO_INCREMENT,
  `idproyecto` int DEFAULT NULL,
  `idventas_contactos` int DEFAULT NULL,
  PRIMARY KEY (`idproyecto_contactos`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8mb3;



# Volcado de tabla tblproyecto_materiales
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblproyecto_materiales` (
  `idproyecto_materiales` int NOT NULL AUTO_INCREMENT,
  `idproyecto` int NOT NULL,
  `idinventario_material` int NOT NULL,
  PRIMARY KEY (`idproyecto_materiales`)
) ENGINE=InnoDB AUTO_INCREMENT=617 DEFAULT CHARSET=latin1;



# Volcado de tabla tblproyecto_pdv_material
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblproyecto_pdv_material` (
  `idproyecto_pdv_material` int NOT NULL AUTO_INCREMENT,
  `idproyectotiendas` int NOT NULL,
  `idrepartirpreguntas_select` int NOT NULL,
  `idinventario_material` int NOT NULL,
  `cantidad` int NOT NULL,
  PRIMARY KEY (`idproyecto_pdv_material`)
) ENGINE=InnoDB AUTO_INCREMENT=4874 DEFAULT CHARSET=latin1;



# Volcado de tabla tblproyecto_pdv_produccion
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblproyecto_pdv_produccion` (
  `idproyecto_pdv_produccion` int NOT NULL AUTO_INCREMENT,
  `idproyectotiendas` int NOT NULL,
  PRIMARY KEY (`idproyecto_pdv_produccion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Volcado de tabla tblproyecto_pdv_remisiones
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblproyecto_pdv_remisiones` (
  `idproyecto_pdv_remisiones` int NOT NULL AUTO_INCREMENT,
  `idremisiones` int NOT NULL,
  `idpdv` int NOT NULL,
  `idinventario_material` int NOT NULL,
  `cantidad` int NOT NULL,
  PRIMARY KEY (`idproyecto_pdv_remisiones`)
) ENGINE=InnoDB AUTO_INCREMENT=1062 DEFAULT CHARSET=latin1;



# Volcado de tabla tblproyecto_pdv_vobo
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblproyecto_pdv_vobo` (
  `idproyecto_pdv_vobo` int NOT NULL,
  `idproyectotiendas` int NOT NULL,
  PRIMARY KEY (`idproyecto_pdv_vobo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Volcado de tabla tblproyecto_produccion
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblproyecto_produccion` (
  `idproyecto_produccion` int NOT NULL AUTO_INCREMENT,
  `idproyect` int NOT NULL,
  PRIMARY KEY (`idproyecto_produccion`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;



# Volcado de tabla tblproyecto_relacion
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblproyecto_relacion` (
  `idproyecto_relacion` int NOT NULL AUTO_INCREMENT,
  `idproyecto_seguimiento` int NOT NULL,
  `idproyecto` int NOT NULL,
  PRIMARY KEY (`idproyecto_relacion`)
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=utf8mb3;



# Volcado de tabla tblproyecto_seguimiento
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblproyecto_seguimiento` (
  `idproyecto_seguimiento` int NOT NULL AUTO_INCREMENT,
  `numero` int DEFAULT NULL,
  `sueldo` decimal(11,2) NOT NULL,
  `transporte` decimal(11,2) NOT NULL,
  `porc_agencia` decimal(11,2) NOT NULL,
  PRIMARY KEY (`idproyecto_seguimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8mb3;



# Volcado de tabla tblproyecto_seguimiento_otros
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblproyecto_seguimiento_otros` (
  `idproyecto_seguimiento_otros` int NOT NULL AUTO_INCREMENT,
  `idproyecto_seguimiento` int NOT NULL,
  `cantidad` decimal(11,2) NOT NULL,
  `observaciones` tinytext,
  PRIMARY KEY (`idproyecto_seguimiento_otros`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;



# Volcado de tabla tblproyecto_sincronizar
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblproyecto_sincronizar` (
  `idproyecto_sincronizar` int NOT NULL AUTO_INCREMENT,
  `idproyecto` int NOT NULL,
  PRIMARY KEY (`idproyecto_sincronizar`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;



# Volcado de tabla tblproyecto_sub
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblproyecto_sub` (
  `idproyecto_sub` int NOT NULL AUTO_INCREMENT,
  `idproyecto` int NOT NULL,
  `numero` int NOT NULL,
  `letra` varchar(1) DEFAULT NULL,
  `fechainicio` varchar(10) DEFAULT NULL,
  `fechafin` varchar(10) DEFAULT NULL,
  `tipoproyecto` tinyint(1) NOT NULL,
  `nopdv` int NOT NULL,
  `actividad` tinyint(1) NOT NULL,
  PRIMARY KEY (`idproyecto_sub`)
) ENGINE=InnoDB AUTO_INCREMENT=2754 DEFAULT CHARSET=utf8mb3;



# Volcado de tabla tblproyectocotizacion
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblproyectocotizacion` (
  `idproyectocotizacion` int NOT NULL AUTO_INCREMENT,
  `idproyecto` int NOT NULL,
  `idrelproyectosarchivos` int NOT NULL,
  `pdv` int NOT NULL,
  `cotizacion` varchar(100) DEFAULT NULL,
  `costo` decimal(11,2) NOT NULL,
  `estadocot` int NOT NULL DEFAULT '0',
  `idproyectotiendas` int NOT NULL,
  `sueldo` decimal(11,2) NOT NULL,
  `transporte` decimal(11,2) NOT NULL,
  PRIMARY KEY (`idproyectocotizacion`)
) ENGINE=InnoDB AUTO_INCREMENT=709 DEFAULT CHARSET=latin1;



# Volcado de tabla tblreporte
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblreporte` (
  `idreporte` int NOT NULL AUTO_INCREMENT,
  `idproyecto` int NOT NULL,
  `fechareporte` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `titulo` varchar(256) NOT NULL DEFAULT '',
  `paginas` int DEFAULT '1',
  `fondo` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`idreporte`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;



# Volcado de tabla tbltienda
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbltienda` (
  `idtienda` int NOT NULL AUTO_INCREMENT,
  `idgrupotienda` int NOT NULL,
  `codigocliente` varchar(20) DEFAULT NULL,
  `sucursalid` varchar(20) DEFAULT '0',
  `nombretienda` varchar(128) NOT NULL,
  `domicilio` varchar(128) DEFAULT NULL,
  `colonia` varchar(64) DEFAULT NULL,
  `codigopostal` varchar(15) DEFAULT NULL,
  `poblacion` varchar(64) DEFAULT NULL,
  `telefono1` varchar(45) DEFAULT NULL,
  `telefono2` varchar(45) DEFAULT NULL,
  `contacto` varchar(256) DEFAULT NULL,
  `mail` varchar(128) DEFAULT NULL,
  `idzona` int NOT NULL,
  `idestados` int NOT NULL,
  `idformato` int NOT NULL,
  `activo` tinyint(1) DEFAULT '1',
  `entrega` varchar(45) DEFAULT NULL,
  `distrital` varchar(45) DEFAULT NULL,
  `idclientetwc` int NOT NULL,
  `idcliente` int NOT NULL,
  PRIMARY KEY (`idtienda`),
  KEY `idx_idzona` (`idzona`)
) ENGINE=InnoDB AUTO_INCREMENT=89886 DEFAULT CHARSET=utf8mb3;



# Volcado de tabla tbltipoempleado
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbltipoempleado` (
  `idtipoempleado` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtipoempleado`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;



# Volcado de tabla tblusuario
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblusuario` (
  `idusuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(128) NOT NULL,
  `appaterno` varchar(128) NOT NULL,
  `apmaterno` varchar(128) DEFAULT NULL,
  `usuario` varchar(64) NOT NULL,
  `contrasenia` varchar(64) NOT NULL,
  `idnivel` int NOT NULL,
  `idzona` int DEFAULT NULL,
  `idestado` int NOT NULL,
  `mail` varchar(256) NOT NULL,
  `activo` tinyint(1) DEFAULT '1',
  `idusuariop` int NOT NULL,
  `online` tinyint NOT NULL DEFAULT '0',
  `idcliente` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`idusuario`),
  KEY `fk_tblusuario_catnivel_idx` (`idnivel`),
  KEY `fk_tblusuario_catzona1_idx` (`idzona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;



# Volcado de tabla telefonicadoc
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefonicadoc` (
  `idtelefonicadoc` int NOT NULL AUTO_INCREMENT,
  `nombredoc` varchar(200) DEFAULT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtelefonicadoc`)
) ENGINE=InnoDB AUTO_INCREMENT=2571 DEFAULT CHARSET=latin1;



# Volcado de tabla territorio
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `territorio` (
  `no` int NOT NULL AUTO_INCREMENT,
  `entidad_federativa` varchar(100) DEFAULT NULL,
  `territorio` int DEFAULT NULL,
  `idregion` int DEFAULT NULL,
  `idestado` int NOT NULL DEFAULT '0',
  `distancia` decimal(11,2) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;



# Volcado de tabla tfolio
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tfolio` (
  `idtfolio` int NOT NULL AUTO_INCREMENT,
  `tfolio` varchar(45) DEFAULT NULL,
  `idalmacen` int DEFAULT NULL,
  PRIMARY KEY (`idtfolio`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;



# Volcado de tabla tipo
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo` (
  `idtipo` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  `codigosat` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtipo`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;



# Volcado de tabla tipo_envio
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_envio` (
  `idtipo_envio` int NOT NULL AUTO_INCREMENT,
  `envio` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtipo_envio`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;



# Volcado de tabla tipo_material
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_material` (
  `idtipo_material` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(150) DEFAULT NULL,
  `color` varchar(45) NOT NULL,
  PRIMARY KEY (`idtipo_material`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;



# Volcado de tabla transporte
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transporte` (
  `idtransporte` int NOT NULL AUTO_INCREMENT,
  `idtipo_envio` int DEFAULT NULL,
  `decripcion` varchar(45) DEFAULT NULL,
  `idregion` int DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `contacto` varchar(45) DEFAULT NULL,
  `rendimiento` varchar(45) DEFAULT NULL,
  `tipogas` int NOT NULL,
  `marca` varchar(45) DEFAULT NULL,
  `modelo` varchar(45) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL,
  `serie` varchar(45) DEFAULT NULL,
  `motor` varchar(45) DEFAULT NULL,
  `placas` varchar(45) DEFAULT NULL,
  `empresa` varchar(45) DEFAULT NULL,
  `folio` varchar(45) DEFAULT NULL,
  `fecha_verificacion` varchar(10) DEFAULT NULL,
  `calcomania` varchar(45) DEFAULT NULL,
  `vigencia` varchar(45) DEFAULT NULL,
  `mantenimientos` varchar(10) DEFAULT NULL,
  `reparaciones` varchar(10) DEFAULT NULL,
  `fi_v1` varchar(10) DEFAULT NULL,
  `ff_v1` varchar(10) DEFAULT NULL,
  `fi_v2` varchar(10) DEFAULT NULL,
  `ff_v2` varchar(10) DEFAULT NULL,
  `aseguradora` varchar(45) DEFAULT NULL,
  `tarjeta_caseta` varchar(45) DEFAULT NULL,
  `tarjeta_gasolina` varchar(45) DEFAULT NULL,
  `no_poliza` varchar(45) DEFAULT NULL,
  `dias_descanso` varchar(45) DEFAULT NULL,
  `tar_cir_vigencia` varchar(10) DEFAULT NULL,
  `tar_cir_expedicion` varchar(10) DEFAULT NULL,
  `procedencia` varchar(45) DEFAULT NULL,
  `tabulador` decimal(11,2) NOT NULL,
  PRIMARY KEY (`idtransporte`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;



# Volcado de tabla transporte_documentos
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transporte_documentos` (
  `idtransporte_documentos` int NOT NULL AUTO_INCREMENT,
  `idtransporte` int NOT NULL,
  `ruta` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idtransporte_documentos`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;



# Volcado de tabla videos_capacitacion
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videos_capacitacion` (
  `idvideos_capacitacion` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `ruta` varchar(100) NOT NULL,
  PRIMARY KEY (`idvideos_capacitacion`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;



# Volcado de tabla wine_bodegas
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wine_bodegas` (
  `idbodegas` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `abreviatura` varchar(45) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `nobodega` varchar(45) DEFAULT NULL,
  `tarimas` int NOT NULL,
  `comentarios` tinytext,
  PRIMARY KEY (`idbodegas`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;



# Volcado de tabla wine_bodegas_user
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wine_bodegas_user` (
  `idbodegas_user` int NOT NULL AUTO_INCREMENT,
  `idbodegas` int NOT NULL,
  `iduser` int NOT NULL,
  PRIMARY KEY (`idbodegas_user`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=latin1;



# Volcado de tabla wine_carrito
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wine_carrito` (
  `idcarrito` int NOT NULL AUTO_INCREMENT,
  `idproducto` int NOT NULL,
  `cantidad` int NOT NULL,
  `iduser` int NOT NULL,
  `estado` int NOT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  `hora` varchar(45) DEFAULT NULL,
  `idcompras` int NOT NULL,
  `ieps` decimal(11,2) NOT NULL,
  `recepcion` int NOT NULL,
  `cantidad_resivida` int NOT NULL,
  `verificar` int NOT NULL,
  `compra_new` int NOT NULL,
  `promocion` int NOT NULL,
  `promocion_precio_lista` decimal(11,2) NOT NULL,
  `cantidad_dupli` int NOT NULL,
  `p_precio_lista` decimal(11,2) NOT NULL,
  `p_descuento` varchar(45) DEFAULT NULL,
  `p_ieps` int NOT NULL,
  `p_iva` int NOT NULL,
  `p_precio_compra_siva` decimal(11,2) NOT NULL,
  `p_precio_compra_civa` decimal(11,2) NOT NULL,
  `p_precio_venta_siva` decimal(11,2) NOT NULL,
  `p_precio_venta_civa` decimal(11,2) NOT NULL,
  `idcarrito_new` int NOT NULL,
  `cant_caja` int NOT NULL,
  PRIMARY KEY (`idcarrito`)
) ENGINE=InnoDB AUTO_INCREMENT=6672 DEFAULT CHARSET=latin1;



# Volcado de tabla wine_cfdi
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wine_cfdi` (
  `idcfdi` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcfdi`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;



# Volcado de tabla wine_clase
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wine_clase` (
  `idclase` int NOT NULL AUTO_INCREMENT,
  `clase` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idclase`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;



# Volcado de tabla wine_clientes
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wine_clientes` (
  `idclientes` int NOT NULL AUTO_INCREMENT,
  `tipocliente` int DEFAULT NULL,
  `clave` int DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `razon_social` varchar(45) DEFAULT NULL,
  `rfc` varchar(45) DEFAULT NULL,
  `calle` varchar(100) DEFAULT NULL,
  `noext` varchar(45) DEFAULT NULL,
  `noint` varchar(45) DEFAULT NULL,
  `colonia` varchar(45) DEFAULT NULL,
  `delegacion` varchar(45) DEFAULT NULL,
  `estado` int DEFAULT NULL,
  `pais` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `regimen_fiscal` int DEFAULT NULL,
  `cfdi` int DEFAULT NULL,
  `forma_pago` int DEFAULT NULL,
  `no_cuenta` varchar(45) DEFAULT NULL,
  `correo_envio` varchar(45) DEFAULT NULL,
  `descuento` varchar(45) DEFAULT NULL,
  `limite_credito` varchar(45) DEFAULT NULL,
  `dias_credito` int DEFAULT NULL,
  `nombre_responsable` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `dias_revision` varchar(45) DEFAULT NULL,
  `horario_revision` varchar(45) DEFAULT NULL,
  `dias_pago` varchar(45) DEFAULT NULL,
  `horario_pago` varchar(45) DEFAULT NULL,
  `codigo_postal` varchar(45) DEFAULT NULL,
  `idtipocliente` int NOT NULL,
  `comentarios` varchar(400) DEFAULT NULL,
  `calle_fact` varchar(100) DEFAULT NULL,
  `noext_fact` varchar(10) DEFAULT NULL,
  `noint_fact` varchar(10) DEFAULT NULL,
  `delegacion_fact` varchar(45) DEFAULT NULL,
  `colonia_fact` varchar(45) DEFAULT NULL,
  `estado_fact` int NOT NULL,
  `pais_fact` varchar(45) DEFAULT NULL,
  `telefono_fact` varchar(15) DEFAULT NULL,
  `codigo_postal_fact` varchar(15) DEFAULT NULL,
  `idgrupotienda` int NOT NULL,
  `idpdv_ruta` int NOT NULL,
  `hora_entrega` varchar(45) DEFAULT NULL,
  `idmetodopago` int NOT NULL,
  `odc` varchar(2) NOT NULL,
  `idejecutivo` int NOT NULL,
  `idregion` int NOT NULL,
  PRIMARY KEY (`idclientes`)
) ENGINE=InnoDB AUTO_INCREMENT=506 DEFAULT CHARSET=latin1;



# Volcado de tabla wine_clientes_productos
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wine_clientes_productos` (
  `idclientes_productos` int NOT NULL AUTO_INCREMENT,
  `idclientes` int NOT NULL,
  `idproducto` int NOT NULL,
  `descuento` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`idclientes_productos`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;



# Volcado de tabla wine_compras
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wine_compras` (
  `idcompras` int NOT NULL AUTO_INCREMENT,
  `fecha` varchar(45) DEFAULT NULL,
  `anio` int NOT NULL,
  `mes` int NOT NULL,
  `numero_compra` varchar(45) DEFAULT NULL,
  `idproveedor` int DEFAULT NULL,
  `ieps` decimal(11,2) NOT NULL,
  `recepcion` int NOT NULL,
  `fecha_recepcion` varchar(45) DEFAULT NULL,
  `no_factura` varchar(45) DEFAULT NULL,
  `idbodegas` int NOT NULL,
  `transferencia` int NOT NULL,
  `ajuste_inv` int NOT NULL,
  `observaciones` tinytext,
  `std_devolucion` int NOT NULL,
  `idventas` int NOT NULL,
  PRIMARY KEY (`idcompras`)
) ENGINE=InnoDB AUTO_INCREMENT=2785 DEFAULT CHARSET=latin1;



# Volcado de tabla wine_diascredito
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wine_diascredito` (
  `iddiascredito` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iddiascredito`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;



# Volcado de tabla wine_existencias
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wine_existencias` (
  `idexistencias` int NOT NULL AUTO_INCREMENT,
  `idproducto` int DEFAULT NULL,
  `existencias` varchar(45) DEFAULT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  `idventa` int NOT NULL,
  PRIMARY KEY (`idexistencias`)
) ENGINE=InnoDB AUTO_INCREMENT=33279 DEFAULT CHARSET=latin1;



# Volcado de tabla wine_ieps
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wine_ieps` (
  `idieps` int NOT NULL AUTO_INCREMENT,
  `ieps` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idieps`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;



# Volcado de tabla wine_imagenes
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wine_imagenes` (
  `idimagenes` int NOT NULL AUTO_INCREMENT,
  `idventas` int NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idimagenes`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;



# Volcado de tabla wine_iva
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wine_iva` (
  `idiva` int NOT NULL AUTO_INCREMENT,
  `iva` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idiva`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;



# Volcado de tabla wine_menu_permisos
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wine_menu_permisos` (
  `idmenu_permisos` int NOT NULL AUTO_INCREMENT,
  `iduser` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`idmenu_permisos`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;



# Volcado de tabla wine_metodopago
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wine_metodopago` (
  `idmetodopago` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idmetodopago`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;



# Volcado de tabla wine_nocompra
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wine_nocompra` (
  `idnocompra` int NOT NULL AUTO_INCREMENT,
  `numero` int NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idnocompra`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;



# Volcado de tabla wine_objetivo
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wine_objetivo` (
  `idwineobjetivo` int NOT NULL AUTO_INCREMENT,
  `idmes` int NOT NULL,
  `anio` int NOT NULL,
  `iduser` int NOT NULL,
  `cantidad` decimal(11,2) NOT NULL,
  PRIMARY KEY (`idwineobjetivo`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;



# Volcado de tabla wine_pagos
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wine_pagos` (
  `idpagos` int NOT NULL AUTO_INCREMENT,
  `idventas` int DEFAULT NULL,
  `fecha_pago` varchar(45) DEFAULT NULL,
  `pago` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idpagos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Volcado de tabla wine_pagosat
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wine_pagosat` (
  `idpagosat` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idpagosat`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;



# Volcado de tabla wine_panelcontrol
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wine_panelcontrol` (
  `idpanelcontrol` int NOT NULL AUTO_INCREMENT,
  `module_id` int NOT NULL,
  `group_id` int NOT NULL,
  `ver` int NOT NULL,
  `editar` int NOT NULL,
  `eliminar` int NOT NULL,
  `crear` int NOT NULL,
  `pdf` int NOT NULL,
  `excel` int NOT NULL,
  `factura` int NOT NULL,
  PRIMARY KEY (`idpanelcontrol`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;



# Volcado de tabla wine_producto
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wine_producto` (
  `idproducto` int NOT NULL AUTO_INCREMENT,
  `clave` varchar(45) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `sat` int NOT NULL,
  `clase` int NOT NULL,
  `tipo` int NOT NULL,
  `idproveedor` int NOT NULL,
  `descuento` varchar(45) NOT NULL,
  `precio_lista` decimal(11,2) NOT NULL,
  `precio_compra_siva` decimal(11,2) NOT NULL,
  `precio_compra_civa` decimal(11,2) NOT NULL,
  `precio_venta_siva` decimal(11,2) NOT NULL,
  `precio_venta_civa` decimal(11,2) NOT NULL,
  `ieps` int NOT NULL,
  `iva` int NOT NULL,
  `unidad` int NOT NULL,
  `existencias` int NOT NULL,
  `imagen` varchar(45) DEFAULT NULL,
  `active` int NOT NULL DEFAULT '1',
  `cant_caja` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idproducto`)
) ENGINE=InnoDB AUTO_INCREMENT=648 DEFAULT CHARSET=latin1;



# Volcado de tabla wine_proveedores
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wine_proveedores` (
  `idproveedores` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `colonia` varchar(45) DEFAULT NULL,
  `delegacion` varchar(45) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `cp` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `dias_credito` varchar(45) DEFAULT NULL,
  `forma_pago` int DEFAULT NULL,
  `titular_cuenta` varchar(45) DEFAULT NULL,
  `banco` varchar(45) DEFAULT NULL,
  `contacto_nombre` varchar(45) DEFAULT NULL,
  `telefono1` varchar(45) DEFAULT NULL,
  `telefono2` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `rfc` varchar(45) DEFAULT NULL,
  `comentarios` varchar(500) DEFAULT NULL,
  `tipo` int NOT NULL,
  `active` int DEFAULT '1',
  PRIMARY KEY (`idproveedores`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;



# Volcado de tabla wine_proveedoresuser
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wine_proveedoresuser` (
  `idproveedoresuser` int NOT NULL AUTO_INCREMENT,
  `idproveedores` int NOT NULL,
  `iduser` int NOT NULL,
  PRIMARY KEY (`idproveedoresuser`)
) ENGINE=InnoDB AUTO_INCREMENT=540 DEFAULT CHARSET=latin1;



# Volcado de tabla wine_proyecto_user
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wine_proyecto_user` (
  `idwine_proyecto_user` int NOT NULL AUTO_INCREMENT,
  `idproveedor` int NOT NULL,
  `iduser` int NOT NULL,
  PRIMARY KEY (`idwine_proyecto_user`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;



# Volcado de tabla wine_psc
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wine_psc` (
  `idpsc` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idpsc`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;



# Volcado de tabla wine_regimenfiscal
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wine_regimenfiscal` (
  `idregimenfiscal` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idregimenfiscal`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;



# Volcado de tabla wine_sat
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wine_sat` (
  `idsat` int NOT NULL AUTO_INCREMENT,
  `sat` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idsat`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;



# Volcado de tabla wine_tipo
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wine_tipo` (
  `idtipo` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  `clase` int DEFAULT NULL,
  PRIMARY KEY (`idtipo`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;



# Volcado de tabla wine_unidad
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wine_unidad` (
  `idunidad` int NOT NULL AUTO_INCREMENT,
  `unidad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idunidad`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;



# Volcado de tabla wine_userproveedor
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wine_userproveedor` (
  `iduserproveedor` int NOT NULL AUTO_INCREMENT,
  `iduser` int NOT NULL,
  `idproveedores` int NOT NULL,
  PRIMARY KEY (`iduserproveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Volcado de tabla wine_ventamostrador
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wine_ventamostrador` (
  `idventamostrador` int NOT NULL AUTO_INCREMENT,
  `idventas` int NOT NULL,
  `regimen_fiscal` int NOT NULL,
  `dias_credito` int NOT NULL,
  `forma_pago` int NOT NULL,
  `idmetodopago` int NOT NULL,
  `cfdi` int NOT NULL,
  `correo_envio` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idventamostrador`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;



# Volcado de tabla wine_ventas
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wine_ventas` (
  `idventas` int NOT NULL AUTO_INCREMENT,
  `anio` int NOT NULL,
  `mes` int NOT NULL,
  `fecha_venta` varchar(45) DEFAULT NULL,
  `fecha_migracion` varchar(45) DEFAULT NULL,
  `no_remision` int NOT NULL,
  `idcliente` int NOT NULL,
  `venderdor` varchar(45) DEFAULT NULL,
  `tipoventa` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `condiciones` varchar(200) DEFAULT NULL,
  `descuento` varchar(45) DEFAULT NULL,
  `tipopago` int NOT NULL,
  `pago` varchar(45) DEFAULT NULL,
  `fecha_pago` varchar(45) DEFAULT NULL,
  `estado` int NOT NULL,
  `factura` varchar(45) DEFAULT NULL,
  `no_factura` varchar(45) DEFAULT NULL,
  `fecha_entrega` varchar(45) DEFAULT NULL,
  `foto` varchar(45) DEFAULT NULL,
  `estadodistribucion` int NOT NULL,
  `iduser` int NOT NULL,
  `entregara` varchar(45) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `idbodegas` int NOT NULL,
  `idbodegas_destino` int NOT NULL,
  `idpsc` int NOT NULL,
  `clientenew` varchar(45) DEFAULT NULL,
  `comentarios` tinytext,
  `c_estado` varchar(45) DEFAULT NULL,
  `idproyecto` int NOT NULL,
  PRIMARY KEY (`idventas`)
) ENGINE=InnoDB AUTO_INCREMENT=14870 DEFAULT CHARSET=latin1;



# Volcado de tabla wine_ventas_cantidad
# ------------------------------------------------------------

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wine_ventas_cantidad` (
  `idventascantidad` int NOT NULL AUTO_INCREMENT,
  `cantidad` int NOT NULL,
  `idproducto` int NOT NULL,
  `idventas` int NOT NULL,
  `iduser` int NOT NULL,
  `estado` int NOT NULL,
  `tipoventa` int NOT NULL,
  `cantidad_psc` int NOT NULL,
  `devolucion` int NOT NULL,
  `p_precio_lista` decimal(11,2) NOT NULL,
  `p_descuento` varchar(9) DEFAULT NULL,
  `p_ieps` int NOT NULL,
  `p_iva` int NOT NULL,
  `p_precio_compra_siva` decimal(11,2) NOT NULL,
  `p_precio_compra_civa` decimal(11,2) NOT NULL,
  `p_precio_venta_siva` decimal(11,2) NOT NULL,
  `p_precio_venta_civa` decimal(11,2) NOT NULL,
  `descuento` varchar(9) DEFAULT NULL,
  `importe` decimal(11,2) NOT NULL,
  `total` decimal(11,2) NOT NULL,
  `cant_caja` int NOT NULL,
  `cant_solicitada` int NOT NULL,
  PRIMARY KEY (`idventascantidad`)
) ENGINE=InnoDB AUTO_INCREMENT=31774 DEFAULT CHARSET=latin1;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
