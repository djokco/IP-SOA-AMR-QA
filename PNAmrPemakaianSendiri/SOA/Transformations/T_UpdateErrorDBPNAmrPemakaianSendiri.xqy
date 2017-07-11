xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace amr="http://soa.indonesiapower.co.id/schema/AmrPemakaianSendiri";
(:: import schema at "../Schemas/AmrPemakaianSendiri.xsd" ::)
declare namespace dbp="http://xmlns.oracle.com/pcbpel/adapter/db/top/dbPNAmrPemakaianSendiriInput";
(:: import schema at "../Schemas/dbPNAmrPemakaianSendiriInput_table.xsd" ::)
declare namespace dbu="http://xmlns.oracle.com/pcbpel/adapter/db/top/dbUpdatePNAmrPemakaianSendiri";
(:: import schema at "../Schemas/dbUpdatePNAmrPemakaianSendiri_table.xsd" ::)

declare variable $ReceiveInput_receive_InputVariable.AmrPsCollection as element() (:: schema-element(dbp:AmrPsCollection) ::) external;
declare variable $Response as element() (:: schema-element(amr:ResponseAmrPemakaianSendiri) ::) external;

declare function local:funcTransformation_1($ReceiveInput_receive_InputVariable.AmrPsCollection as element() (:: schema-element(dbp:AmrPsCollection) ::), 
                                            $Response as element() (:: schema-element(amr:ResponseAmrPemakaianSendiri) ::)) 
                                            as element() (:: schema-element(dbu:AmrPsCollection) ::) {
    <dbu:AmrPsCollection>
        {
            for $AmrPs in $ReceiveInput_receive_InputVariable.AmrPsCollection/dbp:AmrPs
            return 
            <dbu:AmrPs>
                <dbu:id>{fn:data($AmrPs/dbp:id)}</dbu:id>
                <dbu:soaStatus>{fn:data($Response/amr:Response/amr:ErrorCode)}</dbu:soaStatus>
                <dbu:soaMessage>{fn:data($Response/amr:Response/amr:ErrorMessage)}</dbu:soaMessage></dbu:AmrPs>
        }</dbu:AmrPsCollection>
};

local:funcTransformation_1($ReceiveInput_receive_InputVariable.AmrPsCollection, $Response)
