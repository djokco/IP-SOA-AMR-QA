<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/top/dbPNAmrNetto"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tns="http://www.ibm.com/maximo"
                exclude-result-prefixes="xsd xsi oracle-xsl-mapper xsl ns0 tns oraxsl xp20 xref mhdr oraext dvm socket"
                xmlns:pc="http://xmlns.oracle.com/pcbpel/" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/db/IP-AMR-SOA/PNAmrNetto/dbPNAmrNetto"
                xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:mxws="http://www.ibm.com/maximo/wsdl/IPPN_REALI_PNJLN">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/dbPNAmrNetto.wsdl"/>
        <oracle-xsl-mapper:rootElement name="AmrNettoCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/dbPNAmrNetto"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="http://192.168.100.196/meaweb/wsdl/IPPN_REALI_PNJLN.wsdl"/>
        <oracle-xsl-mapper:rootElement name="QueryIPPN_REALI_PNJLN" namespace="http://www.ibm.com/maximo"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [FRI MAY 19 12:02:32 ICT 2017].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <tns:QueryIPPN_REALI_PNJLN>
      <tns:IPPN_REALI_PNJLNQuery>
        <tns:IPPN_METER>
          <tns:METERID>
            <xsl:value-of select="/ns0:AmrNettoCollection/ns0:AmrNetto/ns0:meterid"/>
          </tns:METERID>
          <tns:ORGID>
            <xsl:value-of select="/ns0:AmrNettoCollection/ns0:AmrNetto/ns0:orgid"/>
          </tns:ORGID>
          <tns:SITEID>
            <xsl:value-of select="/ns0:AmrNettoCollection/ns0:AmrNetto/ns0:siteid"/>
          </tns:SITEID>
          <tns:IPPN_REALI_PNJLN>
            <tns:NIL_KVARH_KRM>
              <xsl:value-of select="/ns0:AmrNettoCollection/ns0:AmrNetto/ns0:kvarhkirim"/>
            </tns:NIL_KVARH_KRM>
            <tns:NIL_KVARH_TRM>
              <xsl:value-of select="/ns0:AmrNettoCollection/ns0:AmrNetto/ns0:kvarhterima"/>
            </tns:NIL_KVARH_TRM>
            <tns:NIL_KWH_KRM>
              <xsl:value-of select="/ns0:AmrNettoCollection/ns0:AmrNetto/ns0:kwhkirim"/>
            </tns:NIL_KWH_KRM>
            <tns:NIL_KWH_TRM>
              <xsl:value-of select="/ns0:AmrNettoCollection/ns0:AmrNetto/ns0:kwhterima"/>
            </tns:NIL_KWH_TRM>
            <tns:TGL_REALI_PNJLN>
              <xsl:value-of select="/ns0:AmrNettoCollection/ns0:AmrNetto/ns0:tanggaldanjam"/>
            </tns:TGL_REALI_PNJLN>
          </tns:IPPN_REALI_PNJLN>
        </tns:IPPN_METER>
      </tns:IPPN_REALI_PNJLNQuery>
    </tns:QueryIPPN_REALI_PNJLN>
  </xsl:template>
</xsl:stylesheet>
