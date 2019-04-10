# main
import extractor
import transformer
import loader

if __name__ == '__main__':
	print("starting my demo ETL pipeline...")
	extracted_data = extractor.extract_something(10)
	transformed_data = transformer.transform_data(extracted_data)
	loader.load_data(transformed_data)