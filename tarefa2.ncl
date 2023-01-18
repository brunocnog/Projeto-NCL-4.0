<?xml version="1.0" encoding="ISO-8859-1"?>
<ncl id="aplTesteEffect">
 <head>
	<regionBase>
		<region id="rgVideo" width="100%" height="100%" zIndex = "0" />
   	</regionBase>

	<descriptorBase>
		<descriptor id="descVideo1"  region="rgVideo" explicitDur="12s"/> 
		<descriptor id="descVideo2"  region="rgVideo" explicitDur="15s"/> 
		<descriptor id="descVideo3"  region="rgVideo" explicitDur="15s"/>
	</descriptorBase>
	
	<connectorBase>

		<!-- ### Condições para início e fim dos vídeos ### -->

		<causalConnector id="onBeginStart">
			<simpleCondition role="onBegin" />
			<simpleAction role="start" max="unbounded"/>
		</causalConnector>

		<causalConnector id="onEndStart">
			<simpleCondition role="onEnd" />
			<simpleAction role="start" max="unbounded"/>
		</causalConnector>

		<causalConnector id="onEndStop">
			<simpleCondition role="onEnd" />
			<simpleAction role="stop" max="unbounded"/>
		</causalConnector>

		<!-- ### Comandos por gestos ### -->

		<causalConnector id="onHandPoseRecognitionPause">
			<connectorParam name="key" />
			<connectorParam name="user" />
			<simpleCondition role="onHandPoseRecognition" key="$key" user="$user" />
			<simpleAction role="pause" />
		</causalConnector>

		<causalConnector id="onHandPoseRecognitionResume">
			<connectorParam name="key" />
			<connectorParam name="user" />
			<simpleCondition role="onHandPoseRecognition" key="$key" user="$user" />
			<simpleAction role="resume" />
		</causalConnector>

		<causalConnector id="onHandPoseRecognitionStop">
			<connectorParam name="key" />
			<connectorParam name="user" />
			<simpleCondition role="onHandPoseRecognition" key="$key" user="$user" />
			<simpleAction role="stop" />
		</causalConnector>

		<!-- ### Comandos por voz ### -->

		<causalConnector id="onVoiceRecognitionPause">
			<connectorParam name="key" />
			<simpleCondition role="onVoiceRecognition" key="$key" />
			<simpleAction role="pause" />
		</causalConnector>

		<causalConnector id="onVoiceRecognitionResume">
			<connectorParam name="key" />
			<simpleCondition role="onVoiceRecognition" key="$key" />
			<simpleAction role="resume" />
		</causalConnector>

		<causalConnector id="onVoiceRecognitionStop">
			<connectorParam name="key" />
			<simpleCondition role="onVoiceRecognition" key="$key" />
			<simpleAction role="stop" />
		</causalConnector>

	</connectorBase>

 </head>

<body>
  	
		<port id="pVideo" component="video1" />
		
		<media id="audio" src="media/soundtrack.mp3"/>

		<media id="video1" src="media/autumn.mp4" descriptor="descVideo1"/>
		<media id="video2" src="media/sea.mp4" descriptor="descVideo2"/>
		<media id="video3" src="media/forest.mp4" descriptor="descVideo3"/>

		<!-- ### Efeito de luz laranja no vídeo1 e aroma no vídeo 2 ### -->

		<effect id="luzV1" type="LightType" descriptor="descVideo1">
			<property name="color" value="urn:mpeg:mpeg-v:01-SI-ColorCSNS:orange" />
		</effect>

		<effect id="aromaV2" type="ScentType" descriptor="descVideo2">
			<property name="scent" value="urn:mpeg:mpeg−v:01−SI−ScentCS−NS:sea" />
		</effect>

		<!-- ### Chamada para início da luz laranja ### -->
		
		<link xconnector="onBeginStart">
			<bind role="onBegin" component="video1"  />
			<bind role="start" component="audio" />
			<bind role="start" component="luzV1" />
		</link>

		<!-- ### Chamada para comando por gestos ### -->
		<!--   ##           gesto pause         ##   -->

		<link xconnector="onHandPoseRecognitionPause">
			<bind role="onHandPoseRecognition" component="video1" >
				<bindParam name="key" value="FIST" />
			</bind>
			<bind role="pause" component="audio" />
			<bind role="pause" component="video1" />
		
			<bind role="onHandPoseRecognition" component="video2" >
				<bindParam name="key" value="FIST" />
			</bind>
			<bind role="pause" component="audio" />
			<bind role="pause" component="video2" />
		
			<bind role="onHandPoseRecognition" component="video3" >
				<bindParam name="key" value="FIST" />
			</bind>
			<bind role="pause" component="audio" />
			<bind role="pause" component="video3" />
		</link>

		<!--   ##         gesto resume         ##   -->

		<link xconnector="onHandPoseRecognitionResume">
			<bind role="onHandPoseRecognition" component="video1">
				<bindParam name="key" value="POINT" />
			</bind>
			<bind role="resume" component="audio" />
			<bind role="resume" component="video1" />
		
			<bind role="onHandPoseRecognition" component="video2">
				<bindParam name="key" value="POINT" />
			</bind>
			<bind role="resume" component="audio" />
			<bind role="resume" component="video2" />
		
			<bind role="onHandPoseRecognition" component="video3">
				<bindParam name="key" value="POINT" />
			</bind>
			<bind role="resume" component="audio" />
			<bind role="resume" component="video3" />
		</link>

		<!--   ##           gesto stop         ##   -->

		<link xconnector="onHandPoseRecognitionStop">
			<bind role="onHandPoseRecognition" component="video1">
				<bindParam name="key" value="OPEN" />
			</bind>
			<bind role="stop" component="audio" />
			<bind role="stop" component="video1" />
		
			<bind role="onHandPoseRecognition" component="video2">
				<bindParam name="key" value="OPEN" />
			</bind>
			<bind role="stop" component="audio" />
			<bind role="stop" component="video2" />
		
			<bind role="onHandPoseRecognition" component="video3">
				<bindParam name="key" value="OPEN" />
			</bind>
			<bind role="stop" component="audio" />
			<bind role="stop" component="video3" />
		</link>

		<!-- ### Chamada para comando por voz ### -->
		<!--   ##           voz pause        ##   -->

		<link xconnector="onVoiceRecognitionPause">
			<bind role="onVoiceRecognition" component="video1">
				<bindParam name="key" value="pausar" />
			</bind>
			<bind role="pause" component="audio" />
			<bind role="pause" component="video1" />

			<bind role="onVoiceRecognition" component="video2">
				<bindParam name="key" value="pausar" />
			</bind>
			<bind role="pause" component="audio" />
			<bind role="pause" component="video2" />

			<bind role="onVoiceRecognition" component="video3">
				<bindParam name="key" value="pausar" />
			</bind>
			<bind role="pause" component="audio" />
			<bind role="pause" component="video3" />
		</link>

		<!--   ##           voz pause        ##   -->

		<link xconnector="onVoiceRecognitionResume">
			<bind role="onVoiceRecognition" component="video1">
				<bindParam name="key" value="tocar" />
			</bind>
			<bind role="resume" component="audio" />			
			<bind role="resume" component="video1" />

			<bind role="onVoiceRecognition" component="video2">
				<bindParam name="key" value="tocar" />
			</bind>
			<bind role="resume" component="audio" />			
			<bind role="resume" component="video2" />

			<bind role="onVoiceRecognition" component="video3">
				<bindParam name="key" value="tocar" />
			</bind>
			<bind role="resume" component="audio" />			
			<bind role="resume" component="video3" />	
		</link>

		<!--   ##           voz stop        ##   -->
		<link xconnector="onVoiceRecognitionStop">		
			<bind role="onVoiceRecognition" component="video1">
				<bindParam name="key" value="parar" />
			</bind>
			<bind role="stop" component="audio" />
			<bind role="stop" component="video1" />

			<bind role="onVoiceRecognition" component="video2">
				<bindParam name="key" value="parar" />
			</bind>
			<bind role="stop" component="audio" />
			<bind role="stop" component="video2" />

			<bind role="onVoiceRecognition" component="video3">
				<bindParam name="key" value="parar" />
			</bind>
			<bind role="stop" component="audio" />
			<bind role="stop" component="video3" />
		</link>

		<!-- ### Chamada fim da luz laranja ### -->

		<link xconnector="onEndStop">
			<bind role="onEnd" component="video1"  />
			<bind role="stop" component="luzV1" /> 		
		</link>

		<!-- ### Chamada para início do aroma ### -->

		<link xconnector="onEndStart">
			<bind role="onEnd" component="video1"  />
			<bind role="start" component="video2" />
			<bind role="start" component="aromaV2" />
		</link>

		<!-- ### Chamada para fim do aroma ### -->

		<link xconnector="onEndStop">
			<bind role="onEnd" component="video2"  />
			<bind role="stop" component="aromaV2" /> 		
		</link>		

		<link xconnector="onEndStart">
			<bind role="onEnd" component="video2"  />
			<bind role="start" component="video3" />
		</link>

		<link xconnector="onEndStop">
			<bind role="onEnd" component="video3"  />
			<bind role="stop" component="audio" /> 		
		</link> 
	</body> 
</ncl>
