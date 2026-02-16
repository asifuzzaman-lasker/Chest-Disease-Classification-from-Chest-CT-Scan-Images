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

## 📂 Project Structure
```
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
```


The system follows a layered architecture:

Research → Modular Components → Pipeline Stages → Deployment → CI/CD

---

## ML Pipeline Design

The pipeline is broken into clear stages:

1. Data Ingestion  
2. Base Model Preparation  
3. Model Training  
4. Model Evaluation  

Each stage is implemented independently inside `pipeline/` and calls reusable logic from `components/`.

This design ensures:

- Maintainability
- Testability
- Clear responsibility separation
- Easy extension to multi-class classification

---

## Running the Training Pipeline

Install dependencies:
```
pip install -r requirements.txt
```
Run the full pipeline:
```
python main.py
```
Or reproduce via DVC:
```
dvc repro
```

## Research Layer (MLflow Integration)

The research/ directory contains notebook-based experimentation including:

- Data exploration
- Model experimentation
- MLflow-based evaluation tracking

This layer supports experimentation before promoting code to structured pipeline modules.

## Docker Deployment

Docker ensures consistent runtime environments across development and production.

**Build image**
```
docker build -t chest-ct-classifier .
```

**Run container**
```
docker run -d -p 8000:8000 --name chest_app chest-ct-classifier
```

This guarantees environment stability and portability.

## Jenkins CI/CD Integration

This project includes a Jenkins pipeline to automate build and deployment.

The Jenkinsfile defines a CI/CD workflow that:

1. Pulls the latest code from GitHub
2. Installs dependencies
3. Builds a Docker image
4. Stops the previous container (if running)
5. Deploys the updated container automatically

**CI/CD Flow**
Git Push → Jenkins Trigger → Docker Build → Container Deployment

**Deployment Logic (Simplified)**
```
docker build -t chest-ct-classifier:${BUILD_NUMBER} .
docker stop chest_app || true
docker rm chest_app || true
docker run -d -p 5000:5000 --name chest_app chest-ct-classifier:${BUILD_NUMBER}
```

This enables automated delivery of model updates without manual intervention.

The pipeline is structured to support future enhancements such as:

- Automated testing
- Model validation checks
- Performance gating before deployment

## Reproducibility with DVC

DVC is used to:

- Track dataset versions
- Define pipeline stages
- Maintain experiment reproducibility

This ensures training consistency across environments.

**Run:**
```
dvc status
dvc repro
```

## GitHub Actions

Basic CI workflow is defined in:

```
.github/workflows/main.yaml
```
This enables repository-level automation and validation.


## What This Project Demonstrates

- Structured ML engineering practices
- Modular pipeline design
- Research-to-production workflow
- CI/CD automation for ML systems
- Containerized deployment
- Reproducible experimentation

This repository represents an integrated approach to deep learning system development and deployment.

## Future Enhancements

- Multi-class classification support
- Automated testing stage in Jenkins
- Model performance validation before deployment
- MLflow integration in production
- Kubernetes-based scaling
- Monitoring and logging integration

## Tech Stack

- Python
- TensorFlow / Keras
- Flask
- DVC
- MLflow
- Docker
- Jenkins
- GitHub Actions


##  Author
### Asifuzzaman Lasker
Applied AI Researcher | Medical Imaging AI | Deep Learning | MLOps | Vision-Language Models
