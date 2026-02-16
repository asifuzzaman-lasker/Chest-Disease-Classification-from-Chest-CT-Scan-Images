# Chest Disease Classification from Chest CT Scan Images  
### End-to-End Deep Learning System with Docker & Jenkins CI/CD

This repository presents a production-oriented deep learning system for chest CT scan disease classification.  

It covers the complete machine learning lifecycle — from model training and reproducible experimentation to containerized deployment and automated CI/CD integration using Jenkins.

The focus is not only model performance, but also system reliability, automation, and deployment readiness.

---

# Project Highlights

- Binary classification of Chest CT images (Healthy vs Diseased)
- Modular pipeline design
- Configuration-driven workflow
- DVC-based reproducibility
- MLflow experiment logging (research phase)
- Docker containerization
- Jenkins-based CI/CD automation
- Flask REST API for inference

This project simulates a real-world ML deployment workflow.

---

# 📂 Project Structure
Chest-Disease-Classification-from-Chest-CT-Scan-Image
|
├── research/ # Experiment notebooks
│ ├── data ingestion
│ ├── base model preparation
│ ├── training
│ └── MLflow evaluation
│
├── src/cnnClassifier/
│ ├── components/ # Core logic modules
│ │ ├── data_ingestion.py
│ │ ├── prepare_base_model.py
│ │ ├── model_trainer.py
│ │ └── model_evaluation.py
│ │
│ ├── pipeline/ # Pipeline stages
│ │ ├── stage_01_data_ingestion.py
│ │ ├── stage_02_prepare_base_model.py
│ │ ├── stage_03_model_trainer.py
│ │ └── stage_04_model_evaluation.py
│ │
│ ├── entity/ # Config entities
│ ├── config/ # Configuration manager
│ ├── constants/ # System constants
│ └── utils/ # Common utilities
│
├── model/ # Saved trained model (model.h5)
├── app.py # Flask API
├── main.py # Pipeline entry point
├── dvc.yaml # DVC pipeline definition
├── params.yaml # Training configuration
├── Dockerfile # Container setup
├── docker-compose.yml # Multi-container config
├── jenkins/Jenkinsfile # Jenkins CI/CD pipeline
├── shell_script/ # Deployment automation scripts
└── .github/workflows/ # GitHub Actions workflow