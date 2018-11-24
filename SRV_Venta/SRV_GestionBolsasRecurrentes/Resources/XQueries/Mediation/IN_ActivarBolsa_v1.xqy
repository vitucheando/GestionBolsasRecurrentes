xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://entel.com.pe/GestionBolsasRecurrentes_ActivarBolsa_request";
(:: import schema at "../../XSD/Messages/ActivarBolsaRequest_v1.xsd" ::)
declare namespace ns2="http://entel.com.pe/bpel/message/BPEL_GestionBolsasRecurrentes/gestionBolsasRecurrentes/v1/";
(:: import schema at "../../../../../CON_WS_NATIVE/CON_WS_GestionBolsasRecurrentes/Resources/XSD/BPEL_GestionBolsasRecurrentes_v1.xsd" ::)

declare namespace ns3 = "http://entel.com.pe/esb/data/cliente/cliente/v1/";

declare namespace ns4 = "http://entel.com.pe/esb/data/cliente/telefono/v1/";

declare namespace ns5 = "http://entel.com.pe/esb/data/servicio/servicio/v1/";

declare variable $requestBody as element() (:: schema-element(ns1:activarBolsaRequest) ::) external;

declare function local:func($requestBody as element() (:: schema-element(ns1:activarBolsaRequest) ::)) as element() (:: schema-element(ns2:gestionBolsasRecurrentesRequest) ::) {
    <ns2:gestionBolsasRecurrentesRequest>
        <ns3:idCliente>{fn:data($requestBody/ns1:body/ns1:idCliente)}</ns3:idCliente>
        <ns4:numeroTelefono>{fn:data($requestBody/ns1:body/ns1:numeroTelefono)}</ns4:numeroTelefono>
        <ns5:idServicio>{fn:data($requestBody/ns1:body/ns1:idServicio)}</ns5:idServicio>
        <ns5:servicioPrecio>{fn:data($requestBody/ns1:body/ns1:servicioPrecio)}</ns5:servicioPrecio>
    </ns2:gestionBolsasRecurrentesRequest>
};

local:func($requestBody)
