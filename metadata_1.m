%Metadata handling script – generates and manages the metadata CSV that links image filenames with quality attributes (porosity, texture, and color gradient).

% ========================================================================
% Script: generate_metadata.m
% Purpose: Generate structured metadata for bread crumb image dataset
% Author: Ronnie O. Serfa Juan et al.
% ------------------------------------------------------------------------
% This script automatically compiles metadata for each image in the dataset.
% It links Image_IDs to corresponding porosity, texture, and color scores.
% The output is a CSV file following FAIR principles for reproducibility.
% ========================================================================

clear; clc;   % Clear all variables and the command window to avoid conflicts

% ------------------------------------------------------------------------
% Define the folder containing the bread crumb images
% NOTE: Change this path if your dataset is stored in another location
% ------------------------------------------------------------------------
imageDir = 'E:\bread_project\images';

% ------------------------------------------------------------------------
% Get a list of all .jpg image files in the specified folder
% "dir" returns a structure with filenames and properties
% ------------------------------------------------------------------------
fileList = dir(fullfile(imageDir, '*.jpg'));

% ------------------------------------------------------------------------
% Initialize metadata columns
% Each image will have a row entry in the metadata table
% Scores are initialized with NaN (Not a Number) as placeholders
% until manual or automated annotation is added
% ------------------------------------------------------------------------
Image_ID = {fileList.name}';                % Extract image filenames
Porosity_Score = nan(length(fileList),1);   % Placeholder column for porosity
Texture_Score  = nan(length(fileList),1);   % Placeholder column for texture
Color_Gradient = nan(length(fileList),1);   % Placeholder column for color gradient

% ------------------------------------------------------------------------
% Create a structured table containing all metadata
% Columns: Image_ID, Porosity_Score, Texture_Score, Color_Gradient
% ------------------------------------------------------------------------
metadataTable = table(Image_ID, Porosity_Score, Texture_Score, Color_Gradient);

% ------------------------------------------------------------------------
% Save the metadata as a CSV file for external use
% File will be generated in the current working directory
% Change filename if multiple metadata versions are needed
% ------------------------------------------------------------------------
writetable(metadataTable, 'bread_metadata.csv');

% ------------------------------------------------------------------------
% Display confirmation message in the MATLAB Command Window
% ------------------------------------------------------------------------
disp('Metadata CSV generated: bread_metadata.csv');

