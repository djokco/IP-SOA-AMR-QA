xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace amr="http://soa.indonesiapower.co.id/schema/amrbruto";
(:: import schema at "../Schemas/AmrBruto.xsd" ::)
declare namespace dbp="http://xmlns.oracle.com/pcbpel/adapter/db/top/dbPNAmrBrutoInput";
(:: import schema at "../Schemas/dbPNAmrBrutoInput_table.xsd" ::)
declare namespace dbu="http://xmlns.oracle.com/pcbpel/adapter/db/top/dbUpdatePNAmrBruto";
(:: import schema at "../Schemas/dbUpdatePNAmrBruto_table.xsd" ::)

declare variable $ReceiveInput_receive_InputVariable.AmrBrutoCollection as element() (:: schema-element(dbp:AmrBrutoCollection) ::) external;
declare variable $Response as element() (:: schema-element(amr:ResponseAmrBruto) ::) external;

declare function local:funcT_updateerrordbpnamrbruto($ReceiveInput_receive_InputVariable.AmrBrutoCollection as element() (:: schema-element(dbp:AmrBrutoCollection) ::), 
                                                     $Response as element() (:: schema-element(amr:ResponseAmrBruto) ::)) 
                                                     as element() (:: schema-element(dbu:AmrBrutoCollection) ::) {
    <dbu:AmrBrutoCollection>
        {
            for $AmrBruto in $ReceiveInput_receive_InputVariable.AmrBrutoCollection/dbp:AmrBruto
            return 
            <dbu:AmrBruto>
                <dbu:id>{fn:data($AmrBruto/dbp:id)}</dbu:id>
                <dbu:soaStatus>{fn:data($Response/amr:response/amr:ErrorCode)}</dbu:soaStatus>
                <dbu:soaMessage>{fn:data($Response/amr:response/amr:ErrorMessage)}</dbu:soaMessage></dbu:AmrBruto>
        }
    </dbu:AmrBrutoCollection>
};

local:funcT_updateerrordbpnamrbruto($ReceiveInput_receive_InputVariable.AmrBrutoCollection, $Response)
