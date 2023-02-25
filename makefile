default:
	@cat makefile

#(1 pt) Set up your makefile so the tests always run when you use make view
view:	test
	python db_viewer.py
        
init:
	python initialize_database.py
        
#(1 pt) Add clean_view chained entry.  Note: DB must exist before clean_view is run
clean_view:	clean	init	view

test:
	pytest -vvx db_viewer.py


#(2 pt) Use pytest decorator to only run one test, add makefile entry
test_smoke:
	pytest -k "only_test_this" db_viewer.py


clean:
	 rm aquarium.db
