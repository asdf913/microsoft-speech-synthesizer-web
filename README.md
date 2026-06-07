# Microsoft Speech Synthesizer Web

## Build
`mvn clean package`

## Run
`java -jar microsoft-speech-synthesizer-web-0.0.1-SNAPSHOT.jar`

## Runtime Required
<table>
  <tbody>
    <tr>
      <td>Java SE 25</td>
      <td>https://www.oracle.com/java/technologies/downloads/#java25</td>
    </tr>
  </tbody>
</table>

# Development Tool Required

<table>
  <tbody>
    <tr>
      <td>Eclipse&nbsp;2026-03</td>
      <td>https://www.eclipse.org/downloads/packages/release/2026-03/r</td>
    </tr>
    <tr>
      <td>TestNG&nbsp;for&nbsp;Eclipse </td>
      <td>https://testng.org/testng-eclipse-update-site</td>
    </tr>
  </tbody>
</table>
## URL
<table>
  <tbody>
    <tr>
      <td>Text to Speech</td>
      <td>http://127.0.0.:8080/日本語.wav</td>
    </tr>
  </tbody>
</table>
<table>
  <thead>
    <tr>
      <th>Description</th>
      <th>URL</th>
      <th>Result</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Provider&nbsp;Platform</td>
      <td>http://127.0.0.1:8080/getProviderPlatform</td>
      <td>Error</td>
    </tr>
    <tr>
      <td>Voice&nbsp;IDs</td>
      <td>http://127.0.0.1:8080/getVoiceIds</td>
      <td><pre>[
  "TTS_MS_JA-JP_HARUKA_11.0",
  "TTS_MS_EN-US_ZIRA_11.0",
  "TTS_MS_FR-FR_HORTENSE_11.0",
  "TTS_MS_EN-US_DAVID_11.0",
  "TTS_MS_ZH-HK_TRACY_11.0"
]</pre></td>
    </tr>
    <tr>
      <td>Voice&nbsp;Attribute</td>
      <td>http://127.0.0.1:8080/getVoiceAttribute?id=TTS_MS_JA-JP_HARUKA_11.0&attribute=Gender</td>
      <td><pre>["Female"]</pre></td>
    </tr>
    <tr>
      <td>Voice&nbsp;Attributes&nbsp;by&nbsp;ID</td>
      <td>http://127.0.0.1:8080/getVoiceAttributes?id=TTS_MS_JA-JP_HARUKA_11.0</td>
      <td>
        <pre>{
  "Age": "Adult",
  "Gender": "Female",
  "Language": "411",
  "Name": "Microsoft Haruka Desktop",
  "SharedPronunciation": "",
  "SpLexicon": "{0655E396-25D0-11D3-9C26-00C04F8EF87C}",
  "Vendor": "Microsoft",
  "Version": "11.0"
}</pre>
      </td>
    </tr>
  </tbody>
</table>
