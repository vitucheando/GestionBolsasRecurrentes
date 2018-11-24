xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns2="http://entel.com.pe/GestionBolsasRecurrentes_ActivarBolsa_response";
(:: import schema at "../../XSD/Messages/ActivarBolsaResponse_v1.xsd" ::)
declare namespace ns1="http://entel.com.pe/bpel/message/BPEL_GestionBolsasRecurrentes/gestionBolsasRecurrentes/v1/";
(:: import schema at "../../../../../CON_WS_NATIVE/CON_WS_GestionBolsasRecurrentes/Resources/XSD/BPEL_GestionBolsasRecurrentes_v1.xsd" ::)

declare namespace ns3 = "http://entel.com.pe/esb/data/generico/responseStatus/v1/";

declare variable $idTransaccionESB as xs:long external;
declare variable $idTransaccionNegocio as xs:long external;
declare variable $fechaInicio as xs:dateTime external;
declare variable $responseBody as element() (:: schema-element(ns1:gestionBolsasRecurrentesResponse) ::) external;

declare function local:func($idTransaccionESB as xs:long, 
                            $idTransaccionNegocio as xs:long, 
                            $fechaInicio as xs:dateTime, 
                            $responseBody as element() (:: schema-element(ns1:gestionBolsasRecurrentesResponse) ::)) 
                            as element() (:: schema-element(ns2:activarBolsaResponse) ::) {
    <ns2:activarBolsaResponse>
        <ns2:header>
            <ns2:idTransaccionESB>{fn:data($idTransaccionESB)}</ns2:idTransaccionESB>
            <ns2:idTransaccionNegocio>{fn:data($idTransaccionNegocio)}</ns2:idTransaccionNegocio>
            <ns2:fechaInicio>{fn:data($fechaInicio)}</ns2:fechaInicio>
            <ns2:fechaFin>{fn:current-dateTime()}</ns2:fechaFin>
        </ns2:header>
        <ns2:body>
            <ns2:responseStatus>
                <ns2:estado>{fn:data($responseBody/ns3:responseStatus/ns3:estado)}</ns2:estado>
                <ns2:codigoRespuesta>{fn:data($responseBody/ns3:responseStatus/ns3:codigoRespuesta)}</ns2:codigoRespuesta>
                <ns2:descripcionRespuesta>{fn:data($responseBody/ns3:responseStatus/ns3:descripcionRespuesta)}</ns2:descripcionRespuesta>
                <ns2:ubicacionError>{fn:data($responseBody/ns3:responseStatus/ns3:ubicacionError)}</ns2:ubicacionError>
                <ns2:fecha>{fn:data($responseBody/ns3:responseStatus/ns3:fecha)}</ns2:fecha>
                <ns2:errorOrigen>{fn:data($responseBody/ns3:responseStatus/ns3:errorOrigen)}</ns2:errorOrigen>
            </ns2:responseStatus>
        </ns2:body>
    </ns2:activarBolsaResponse>
};

local:func($idTransaccionESB, $idTransaccionNegocio, $fechaInicio, $responseBody)
