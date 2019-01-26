include .env
export

## Make Dataset
data: requirements
	$(PYTHON_INTERPRETER) src/data/make_dataset.py

## Delete all compiled Python files
clean:
	find . -type f -name "*.py[co]" -delete
	find . -type d -name "__pycache__" -delete

create-dl-env:
	conda env create -f environment-dl.yml

create-ml-gpu-env:
	conda env create -f environment-ml-gpu.yml

create-ml-cpu-env:
	conda env create -f environment-ml-cpu.yml

## Delete all compiled Python files
clean:
	find . -type f -name "*.py[co]" -delete
	find . -type d -name "__pycache__" -delete

foo:
	@echo ${DATA_ROOT}
