baseline
baseline: spec
	<baseline>
	spec for: #common do: [ 
		spec
			baseline: 'Iceberg' with: [ 
				spec repository: 'github://npasserini/iceberg' ];
			project: 'Pillar' with: [
				spec
					className: #ConfigurationOfPillar;
					versionString: #'development';
					repository: 'http://smalltalkhub.com/mc/Pier/Pillar/main/' ];	
			package: 'TheMooseBook' with: [ spec requires: #(Pillar) ];
			package: 'GT-InspectorExtensions-Pillar' with: [ 
				spec 
					repository: 'http://smalltalkhub.com/mc/Moose/GToolkit/main/';
					requires: #(Pillar) ]
		]