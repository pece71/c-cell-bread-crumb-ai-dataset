# c-cell-bread-crumb-ai-dataset

MATLAB scripts for metadata generation, annotation support, and preprocessing workflows for a high-resolution bread crumb image dataset acquired using a C-Cell Baking Quality Analyzer. The dataset includes structured annotations for porosity, texture, and color gradient, supporting machine learning and computer vision applications in bread quality assessment.

## Requirements

- MATLAB R2024b (tested)
- Image Processing Toolbox

## Contents

- `generate_metadata.m`  
  Script for creating structured metadata linking image filenames with quality attributes.

- `annotate_bread.m`  
  Semi-automated annotation tool for assigning porosity, texture, and color scores (1–5 scale).

- `metadata/`  
  Template CSV files for dataset organization and annotation.

- `examples/`  
  Sample input images and example outputs for demonstration.

## Dataset Availability

The full dataset is publicly available through the following repositories:

- Zenodo: https://doi.org/10.5281/zenodo.17080119  
- Figshare: https://doi.org/10.6084/m9.figshare.30076501.v1  
- USDA Ag Data Commons: https://doi.org/10.15482/USDA.ADC/29251832  

This GitHub repository provides supporting scripts and documentation only.

## Notes

- All images were acquired under controlled lighting and fixed imaging geometry using a C-Cell system.
- Annotations follow a standardized 1–5 scoring rubric aligned with bread quality evaluation practices.
- No artificial data augmentation is applied to preserve data integrity and reproducibility.

## License

Code: MIT License  
Dataset: CC BY 4.0 (see linked repositories)
