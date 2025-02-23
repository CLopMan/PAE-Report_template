obj=test_myclass

build/$(obj).pdf: $(obj).tex uc3mPAE_template.cls
	latexmk -cd -pdf $(obj).tex	
	mkdir -p build
	bash -c 'mv $$(ls | grep $(obj) | grep -v *.tex) build/'

clear_same_dir:
	bash -c 'rm $$( ls | grep $(obj) | grep -v *.tex)'

clear:
	rm -r build/
