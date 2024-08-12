configure:
	flutterfire configure --project=skribla-web

deploy_hosting:
	firebase deploy --only hosting

serve:
	flutter clean
	flutter pub get
	flutter build web --web-renderer canvaskit
	firebase serve --only hosting

deploy:
	flutter clean
	flutter pub get
	flutter build web --web-renderer canvaskit
	firebase deploy


.PHONY: configure deploy
