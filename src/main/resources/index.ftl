<html>
	<head>
		<script type="text/javascript">
			function submitWav(){
				var form=typeof document==="object"&&document!==null&&typeof document.forms==="object"&&document.forms!=null&&typeof document.forms.length==="number"&&document.forms.length>0?document.forms[0]:null;
				if(form!=null&&typeof form.action==="string"&&typeof document==="object"&&document!==null){
					var els=typeof document.querySelectorAll==="function"?document.querySelectorAll("input[type='text']"):null;
					var el=els!==null&&typeof els.length==="number"&&els.length>0?els[0]:null;
					form.action="/"+(el!==null&&typeof el.value==="string"?el.value:null)+".wav";
					if(typeof form.submit==="function"){form.submit();}
				}
			}
		</script>
	</head>
	<body>
		<form action="/">
			<table>
				<tbody>
					<tr>
						<td>Voice&nbsp;ID</td>
						<td>
							<select name="voiceId">
								<#if voiceIds?? && voiceIds?is_sequence>
									<option></option>
									<#list voiceIds as voiceId>
									    <option value="${voiceId}">${voiceId}</option>
									</#list>
								</#if>
							</select>
						</td>
					</tr>
					<tr>
						<td>Text</td><td><input type="text"/></td>
					</tr>
					<tr>
						<td>&nbsp;</td><td><input type="button" onclick="submitWav();" value="Speak"/></td>
					</tr>
				</tbody>
			</table>
		</form>
		<table border="1">
			<thead>
				<tr>
					<th>&nbsp;</th>
					<#if attributes?? && attributes?is_sequence>
						<#list attributes as attribute>
							<th>${attribute}</th>
						</#list>
					</#if>
				</tr>
			</thead>
			<tbody>				
				<#if voiceAttributes?? && voiceAttributes?is_hash_ex>
					<#list voiceAttributes as key,value>
						<tr>
							<td>${key}</td>
							<#if attributes?? && attributes?is_sequence>
								<#list attributes as attribute>
									<td>${value[attribute]!""}</td>
								</#list>
							</#if>
						</tr>
					</#list>
				</#if>
			</tbody>
		</table>	
	</body>
</html>