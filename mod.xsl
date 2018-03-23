<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.storylist">
        <!-- className 'J_OXMod' required  -->

        <div class="J_OXMod oxmod-storylist" ox-mod="storylist">
            <ul>
            	<xsl:for-each select="data/storylist/i">
            		<li>
            			<div>
            				<a href="{LINK/storydetail}"><img class="mainpic" src="{img}"/></a>
            			</div>
            			<div class="content">
            				<h4 class="type">
	            				<xsl:value-of select="type"/>
	            			</h4>
	            			<p class="time">
	            				<xsl:value-of select="time/y"/>-<xsl:value-of select="time/M"/>-<xsl:value-of select="time/d"/>
	            			</p>
	            			<h3 class="title">
	            				<a href="{LINK/storydetail}"><xsl:value-of select="title"/></a>
	            			</h3>
	            			<p class="brief">
	            				<a href="{LINK/storydetail}"><xsl:value-of select="brief"/></a>
	            			</p>
            			</div>
            			
            		</li>
            	</xsl:for-each>
            </ul>
        </div>
    </xsl:template>
</xsl:stylesheet>
