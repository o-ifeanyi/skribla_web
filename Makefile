configure:
	flutterfire configure --project=skribla-web

deploy:
	flutter clean
	flutter pub get
	flutter build web --web-renderer canvaskit
	firebase deploy


.PHONY: configure deploy
