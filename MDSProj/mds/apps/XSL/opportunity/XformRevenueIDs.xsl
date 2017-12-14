<?xml version="1.0" encoding="UTF-8" ?>
<?oracle-xsl-mapper
  <!-- SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY. -->
  <mapSources>
    <source type="WSDL">
      <schema location="oramds:/apps/WSDL/ISG_SF_Opportunity_WS.wsdl"/>
      <rootElement name="ListOfIsg_Sf_Opportunity_Io" namespace="http://www.siebel.com/xml/ISG_SF_Opportunity_IO/Data"/>
    </source>
  </mapSources>
  <mapTargets>
    <target type="WSDL">
      <schema location="oramds:/apps/WSDL/ISG_SF_Opportunity_WS.wsdl"/>
      <rootElement name="ListOfIsg_Sf_Opportunity_Io" namespace="http://www.siebel.com/xml/ISG_SF_Opportunity_IO/Id"/>
    </target>
  </mapTargets>
  <!-- GENERATED BY ORACLE XSL MAPPER 11.1.1.7.8(build 150622.2350.0222) AT [WED MAY 18 14:26:42 CDT 2016]. -->
?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/"
                xmlns:xsdLocal1="http://www.siebel.com/xml/ISG_SF_Opportunity_IO/Data"
                xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:xsdLocal2="http://www.siebel.com/xml/ISG_SF_Opportunity_IO/Id"
                xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions"
                xmlns:tns1="http://siebel.com/webservices"
                xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/"
                xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/"
                xmlns:ora="http://schemas.oracle.com/xpath/extension"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:tns="http://siebel.com/CustomUI"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:xsdLocal3="http://www.siebel.com/xml/ISG_SF_Opportunity_IO/Query"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath"
                xmlns:med="http://schemas.oracle.com/mediator/xpath"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath"
                xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap"
                exclude-result-prefixes="xsi xsl xsdLocal1 xsdLocal2 tns1 soapenc soap tns xsdLocal3 xsd xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
  <xsl:template match="/">
    <xsdLocal2:ListOfIsg_Sf_Opportunity_Io>
      <xsdLocal2:Opportunity>
        <xsdLocal2:Id>
          <xsl:value-of select="/xsdLocal1:ListOfIsg_Sf_Opportunity_Io/xsdLocal1:Opportunity/xsdLocal1:Id"/>
        </xsdLocal2:Id>
        <xsdLocal2:ListOfRevenue>
          <xsl:for-each select="/xsdLocal1:ListOfIsg_Sf_Opportunity_Io/xsdLocal1:Opportunity/xsdLocal1:ListOfRevenue/xsdLocal1:Revenue">
            <xsdLocal2:Revenue>
              <xsdLocal2:Id>
                <xsl:value-of select="xsdLocal1:Id"/>
              </xsdLocal2:Id>
            </xsdLocal2:Revenue>
          </xsl:for-each>
        </xsdLocal2:ListOfRevenue>
        <!--xsl:if test ="count(/xsdLocal1:ListOfIsg_Sf_Opportunity_Io/xsdLocal1:Opportunity/xsdLocal1:ListOfOpportunity_Organization/xsdLocal1:Opportunity_Organization) > number(0)">
        <xsdLocal2:ListOfOpportunity_Organization>
          <xsl:for-each select="/xsdLocal1:ListOfIsg_Sf_Opportunity_Io/xsdLocal1:Opportunity/xsdLocal1:ListOfOpportunity_Organization/xsdLocal1:Opportunity_Organization">
          <xsl:variable name="index" select ="position()"/>
          <xsl:choose>
          <xsl:when test="$index='1'">
            <xsdLocal2:Opportunity_Organization>
              <xsdLocal2:Id>
                <xsl:value-of select="xsdLocal1:Id"/>
              </xsdLocal2:Id>
            </xsdLocal2:Opportunity_Organization>
            </xsl:when>
            </xsl:choose>
          </xsl:for-each>
        </xsdLocal2:ListOfOpportunity_Organization>
        </xsl:if-->
      </xsdLocal2:Opportunity>
    </xsdLocal2:ListOfIsg_Sf_Opportunity_Io>
    
  </xsl:template>
</xsl:stylesheet>
