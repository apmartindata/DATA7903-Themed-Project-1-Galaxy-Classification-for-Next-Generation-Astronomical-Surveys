from data_processing import load_data, clean_data, transform_data
from models import Model
from utils import setup_logging

def main():
    setup_logging()
    
    # Load and process data
    raw_data = load_data('data/raw')
    cleaned_data = clean_data(raw_data)
    processed_data = transform_data(cleaned_data)

    # Initialize and train model
    model = Model()
    model.train(processed_data)

if __name__ == "__main__":
    main()