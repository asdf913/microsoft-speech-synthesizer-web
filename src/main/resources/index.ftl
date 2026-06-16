<html>
	<head>
		<script type="text/javascript">
			function submitWav(){
				document.forms[0].action="/"+document.querySelectorAll("input[type='text']")[0].value+".wav";
				document.forms[0].submit();
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
	</body>
</html>