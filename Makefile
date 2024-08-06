configure:
	flutterfire configure --project=skribla-web

deploy:
	flutter build web
	firebase deploy


.PHONY: configure deploy
