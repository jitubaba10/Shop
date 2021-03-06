<dsp:page>
  <dsp:importbean bean="/OriginatingRequest" var="originatingRequest" />
  <dsp:getvalueof var="contentItem" vartype="com.endeca.infront.assembler.ContentItem" value="${originatingRequest.contentItem}" />

  	<dsp:droplet name="/atg/dynamo/droplet/ForEach">
  	    <dsp:param name="array" value="${contentItem.atg_contents.targeterResults}"/>
  	    <dsp:oparam name="outputStart">
  	         <table><tr>
  	    </dsp:oparam>
  	    <dsp:oparam name="output">
  	        <td class="leftPadding25px">
  	            <dsp:getvalueof param="element.id" var="id"/>
  	            <a href='<c:url value="/product/details/${id}"/>'>
                    <div class="center-align"><dsp:valueof param="element.displayName"/></div>
                    <dsp:getvalueof param="element.childSKUs[0].thumbnailImage.url" var="imgPath"/>
                    <div><dsp:img src="${imgPath}" iclass="center-align"/></div>
                    <div class="center-align">
                        <dsp:valueof param="element.lowestSalePrice"/>
                        <dsp:valueof param="element.currencyCode"/>
                    </div>
                </a>
            </td>
  	    </dsp:oparam>
  	    <dsp:oparam name="outputEnd">
             </tr></table>
        </dsp:oparam>
  	 </dsp:droplet>

</dsp:page>