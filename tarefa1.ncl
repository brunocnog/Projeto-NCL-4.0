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

	</connectorBase>   </head>   <body>
  	
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
		
		<!-- ### Codição de início da luz laranja ### -->

		<link xconnector="onBeginStart">
			<bind role="onBegin" component="video1"  />
			<bind role="start" component="audio" />
			<bind role="start" component="luzV1" />
		</link>

		<!-- ### Codição de fim da luz laranja ### -->

		<link xconnector="onEndStop">
			<bind role="onEnd" component="video1"  />
			 <bind role="stop" component="luzV1" /> 		
		</link>

		<!-- ### Codição de início do aroma ### -->

		<link xconnector="onEndStart">
			<bind role="onEnd" component="video1"  />
			<bind role="start" component="video2" />
			<bind role="start" component="aromaV2" />
		</link>

		<!-- ### Codição de fim do aroma ### -->

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