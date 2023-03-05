dcUp:
	docker compose up -d

dcDown:
	docker compose down

dcHardRestart:dcDown dcUp

dcAttachToPHPContainer:
	docker compose exec php ash

dcPhp:
	docker compose run --rm php php $$args

dcYarn:
	docker compose run --rm -p 5173:5173 yarn yarn $$args

dcArtisan:
	make dcPhp args="artisan $$args"

dcTinker:
	make dcArtisan args="tinker"

dcPint:
	make dcPhp args="./vendor/bin/pint -v"

dcYarnDev:
	make dcYarn args="dev --host 0.0.0.0"

dcYarnBuild:
	make dcYarn args="build"

