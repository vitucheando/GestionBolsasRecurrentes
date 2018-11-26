xquery version "1.0" encoding "utf-8";

<Rules>  
    <Service>  
   	<loggerName>pe.com.EXP_GestionBolsasRecurrentesLog_v1</loggerName>
    </Service>   		 
    <Operations>  
    	<Operation name="activarBolsa">
            <loggerName>pe.com.EXP_GestionBolsasRecurrentesLog_v1</loggerName>  
            <DestinationService>
                <physicalPath>SRV_Venta/SRV_GestionBolsasRecurrentes/Service/Mediation/MED_GestionBolsasRecurrentes_v1</physicalPath>				
                <esProxy>true</esProxy>
                <nombreOperacion>activarBolsa</nombreOperacion>
                <Transformation>  					
                    <XQ tipo="REQ">None</XQ>
                    <XQ tipo="RESP">None</XQ>
                </Transformation>  
            </DestinationService> 
    	</Operation>
        <Operation name="actualizarLineaCredito">
            <loggerName>pe.com.EXP_GestionBolsasRecurrentesLog_v1</loggerName>
            <DestinationService>
                <physicalPath>SRV_Venta/SRV_GestionBolsasRecurrentes/Service/Mediation/MED_GestionBolsasRecurrentes_v1</physicalPath>               
                <esProxy>true</esProxy>
                <nombreOperacion>actualizarLineaCredito</nombreOperacion>
                <Transformation>                    
                    <XQ tipo="REQ">None</XQ>
                    <XQ tipo="RESP">None</XQ>
                </Transformation>  
            </DestinationService>   	
    	</Operation>        
    </Operations> 
</Rules>