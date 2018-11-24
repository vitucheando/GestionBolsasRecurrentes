xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns2="http://entel.com.pe/GestionBolsasRecurrentes_ActualizarLineaCreditoAppResponse_response";
(:: import schema at "../../XSD/Messages/ActualizarLineaCreditoAppResponse_v1.xsd" ::)
declare namespace ns1="http://xmlns.oracle.com/pcbpel/adapter/db/sp/CON_SP_UPD_AVAILABLE_AMOUNT";
(:: import schema at "../../../../../CON_BD_BDATOS01/CON_COMPRAPAQ/CON_SP_UPD_AVAILABLE_AMOUNT/Resources/XSD/CON_SP_UPD_AVAILABLE_AMOUNT_sp.xsd" ::)

declare namespace ns3 = "http://entel.com.pe/esb/data/generico/responseStatus/v1/";

declare variable $responseBody as element() (:: schema-element(ns1:OutputParameters) ::) external;
declare variable $idTransaccionESB as xs:long external;
declare variable $idTransaccionNegocio as xs:long external;
declare variable $fechaInicio as xs:dateTime external;

declare function local:func($responseBody as element() (:: schema-element(ns1:OutputParameters) ::)) as element() (:: schema-element(ns2:actualizarLineaCreditoAppResponse) ::) {
    <ns2:actualizarLineaCreditoAppResponse>
        <ns2:header>
            <ns2:idTransaccionESB>{fn:data($idTransaccionESB)}</ns2:idTransaccionESB>
            <ns2:idTransaccionNegocio>{fn:data($idTransaccionNegocio)}</ns2:idTransaccionNegocio>
            <ns2:fechaInicio>{fn:data($fechaInicio)}</ns2:fechaInicio>
            <ns2:fechaFin>{fn:current-dateTime()}</ns2:fechaFin>
        </ns2:header>
        <ns2:body>
            <ns2:responseStatus>
                <ns3:estado>
                {
                    if (fn:string-length($responseBody/ns1:AVCH_MESSAGE)>0)
                    then '1'
                    else '0'
                  }    
                </ns3:estado>
                <ns3:codigoRespuesta>
                 {
                    if (fn:string-length($responseBody/ns1:AVCH_MESSAGE)>0)
                    then '1'
                    else '0'
                  }    
                </ns3:codigoRespuesta>
                <ns3:descripcionRespuesta>
                 {
                if (fn:string-length($responseBody/ns1:AVCH_MESSAGE)>0)
                then 'ERROR'
                else 'OK'
                }
                </ns3:descripcionRespuesta>
                <ns3:ubicacionError></ns3:ubicacionError>
                <ns3:fecha>{fn:current-dateTime()}</ns3:fecha>
                {
                    if ($responseBody/ns1:AVCH_MESSAGE)
                    then <ns3:errorOrigen>{fn:data($responseBody/ns1:AVCH_MESSAGE)}</ns3:errorOrigen>
                    else ()
                }
            </ns2:responseStatus>
        </ns2:body>
    </ns2:actualizarMontoEndeudamientoResponse>
};

local:func($responseBody)
