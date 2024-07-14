# Start dependencies commands

dc: ## Cleans the environment
	@echo "╠ Cleaning the project..."
	@rm -rf pubspec.lock
	@flutter clean
	@flutter pub get

du: clean ## Upgrades dependencies
	@echo "╠ Upgrading dependencies..."
	@flutter pub upgrade

d_purge: ## Purges the Flutter dependencies
	@pod deintegrate
	@flutter clean
	@flutter pub get

# End of dependencies commands

# -------------------------------------------------- #

# Start build runner commands

brw: ## Watches the files for changes
	@echo "╠ Watching the project..."
	@flutter pub run build_runner watch --delete-conflicting-outputs

brb: ## Build the files for changes
	@echo "╠ Building the project..."
	@flutter pub run build_runner build --delete-conflicting-outputs

brc: ## Cleans the build runner
	@echo "╠ Cleaning the build runner..."
	@flutter pub run build_runner clean

# End of build runner commands

# -------------------------------------------------- #

# Start code commands

logs: ## Shows the logs
	@echo "╠ Showing the logs..."
	@flutter logs

lint: ## Lints the code
	@echo "╠ Verifying code..."
	@dart analyze . || (echo "Error in project"; exit 1)

r_dev: ## Runs the mobile application in dev with debug mode
	@echo "╠ Running the app in development..."
	@flutter run --flavor development --target lib/main_development.dart 

r_stg: ## Runs the mobile application in staging with debug mode
	@echo "╠ Running the app in staging..."
	@flutter run --flavor staging --target lib/main_staging.dart 

r_prod: ## Runs the mobile application in production with debug mode
	@echo "╠ Running the app"
	@flutter run all --flavor production --target lib/main.dart 

b_apk_prod: ## Create the APK for production
	@echo "╠ Building the APK for production..."
	@flutter clean && flutter build apk release --flavor production -t lib/main.dart

b_install_apk: ## Create the APK for production
	@echo "╠ Installing APK on device..."
	@flutter install --flavor production

b_install_emu: ## Create the APK for production
	@echo "╠ Installing APK on emulator..."
	@adb -s emulator-5554 install -r ./build/app/outputs/flutter-apk/app-production-release.apk

# adb logcat | grep -F "`adb shell ps | grep fr.photospace.cayrnuser | tr -s [:space:] ' ' | cut -d' ' -f2`"
