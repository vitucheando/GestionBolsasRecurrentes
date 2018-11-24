xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns2="http://xmlns.oracle.com/pcbpel/adapter/db/sp/CON_SP_UPD_AVAILABLE_AMOUNT";
(:: import schema at "../../../../../CON_BD_BDATOS01/CON_COMPRAPAQ/CON_SP_UPD_AVAILABLE_AMOUNT/Resources/XSD/CON_SP_UPD_AVAILABLE_AMOUNT_sp.xsd" ::)

declare variable $numeroDocumento as xs:string external;
declare variable $monto as xs:double external;
declare variable $fechaReserva as xs:dateTime external;

declare function local:func($numeroDocumento as xs:string, 
                            $monto as xs:double,
                            $fechaReserva as xs:dateTime) 
                            as element() (:: schema-element(ns2:InputParameters) ::) {
    <ns2:InputParameters>
        <ns2:AVCH_DNI>{fn:data($numeroDocumento)}</ns2:AVCH_DNI>
        <ns2:ANUM_MONTO>{fn:data($monto)}</ns2:ANUM_MONTO>
        <ns2:AFEC_RESERVA>{fn:data($fechaReserva)}</ns2:AFEC_RESERVA>
    </ns2:InputParameters>
};

local:func($numeroDocumento, $monto, $fechaReserva)
