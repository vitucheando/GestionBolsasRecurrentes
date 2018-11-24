xquery version "1.0" encoding "utf-8";

<Rules>  
    <Service>  
   	<loggerName>pe.com.MED_GestionBolsasRecurrentesLog_v1</loggerName>
    </Service>   		 
    <Operations>  
    	<Operation name="procesarActivacionBolsasRecurrentes">
            <loggerName>pe.com.MED_GestionBolsasRecurrentesLog_v1</loggerName>  
            <DestinationService>
                <physicalPath>CON_WS_NATIVE/CON_WS_GestionBolsasRecurrentes/Service/CON_WS_GestionBolsasRecurrentes</physicalPath>				
                <esProxy>false</esProxy>
                <nombreOperacion>CON_WS_GestionBolsasRecurrentes</nombreOperacion>
                <Transformation>  					
                    <XQ tipo="REQ">SRV_Venta/SRV_GestionBolsasRecurrentes/Resources/XQueries/Mediation/IN_ProcesarActivacionBolsasRecurrentes_v1</XQ>
                    <XQ tipo="RESP">SRV_Venta/SRV_GestionBolsasRecurrentes/Resources/XQueries/Mediation/OUT_ProcesarActivacionBolsasRecurrentes_v1</XQ>
                </Transformation>  
            </DestinationService>    	
    	</Operation>        
    </Operations> 
</Rules>