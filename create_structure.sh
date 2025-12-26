#!/bin/bash

# Medical Assistance Application - Project Structure Creation Script
# This script creates the complete folder structure for the medical assistance app

echo "Creating Medical Assistance Application Project Structure..."
echo "=============================================================="

# Create root directory
mkdir -p medical-assistance-app
cd medical-assistance-app

# Create root level files
touch README.md .gitignore docker-compose.yml LICENSE

# FRONTEND Structure (Team Member 1)
echo "Creating Frontend structure..."
mkdir -p frontend/{public/{assets/{icons,images}},src}

# Frontend public folder
touch frontend/public/{index.html,favicon.ico,manifest.json,robots.txt}

# Frontend src structure
mkdir -p frontend/src/{components/{common/{Button,Input,Card,Modal,LoadingSpinner,ErrorBoundary},layout/{Header,Footer,Sidebar,Navigation},features/{OCRScanner,MedicineInfo,VoiceOutput,Reminders}},pages/{Home,Dashboard,Scan,History,Settings,Profile,Auth},hooks,store/{slices,middleware},services,utils,styles,types,assets/{fonts,icons,images}}

# Create frontend files
touch frontend/{package.json,package-lock.json,.eslintrc.js,.prettierrc,tsconfig.json,vite.config.ts}
touch frontend/src/{App.tsx,index.tsx,routes.tsx}

# Frontend common components
touch frontend/src/components/common/Button/{Button.tsx,Button.test.tsx,Button.styles.ts}
touch frontend/src/components/common/Input/{Input.tsx,Input.test.tsx,Input.styles.ts}
touch frontend/src/components/common/Card/{Card.tsx,Card.test.tsx,Card.styles.ts}
touch frontend/src/components/common/Modal/{Modal.tsx,Modal.test.tsx,Modal.styles.ts}
touch frontend/src/components/common/LoadingSpinner/{LoadingSpinner.tsx,LoadingSpinner.test.tsx,LoadingSpinner.styles.ts}
touch frontend/src/components/common/ErrorBoundary/{ErrorBoundary.tsx,ErrorBoundary.test.tsx}

# Frontend layout components
touch frontend/src/components/layout/Header/{Header.tsx,Header.test.tsx,Header.styles.ts}
touch frontend/src/components/layout/Footer/{Footer.tsx,Footer.test.tsx,Footer.styles.ts}
touch frontend/src/components/layout/Sidebar/{Sidebar.tsx,Sidebar.test.tsx,Sidebar.styles.ts}
touch frontend/src/components/layout/Navigation/{Navigation.tsx,Navigation.test.tsx,Navigation.styles.ts}

# Frontend feature components
touch frontend/src/components/features/OCRScanner/{CameraCapture.tsx,ImageUpload.tsx,ScanningProgress.tsx,OCRResults.tsx}
touch frontend/src/components/features/MedicineInfo/{MedicineCard.tsx,DosageInfo.tsx,SideEffects.tsx,UsageInstructions.tsx}
touch frontend/src/components/features/VoiceOutput/{TextToSpeech.tsx,VoiceControls.tsx}
touch frontend/src/components/features/Reminders/{ReminderList.tsx,ReminderForm.tsx,ReminderNotification.tsx}

# Frontend pages
touch frontend/src/pages/Home/HomePage.tsx
touch frontend/src/pages/Dashboard/DashboardPage.tsx
touch frontend/src/pages/Scan/ScanPage.tsx
touch frontend/src/pages/History/HistoryPage.tsx
touch frontend/src/pages/Settings/SettingsPage.tsx
touch frontend/src/pages/Profile/ProfilePage.tsx
touch frontend/src/pages/Auth/{LoginPage.tsx,RegisterPage.tsx}

# Frontend hooks
touch frontend/src/hooks/{useOCR.ts,useCamera.ts,useVoice.ts,useAuth.ts,useAccessibility.ts}

# Frontend store
touch frontend/src/store/index.ts
touch frontend/src/store/slices/{authSlice.ts,medicineSlice.ts,ocrSlice.ts,settingsSlice.ts}
touch frontend/src/store/middleware/.gitkeep

# Frontend services
touch frontend/src/services/{api.ts,authService.ts,ocrService.ts,medicineService.ts,voiceService.ts}

# Frontend utils
touch frontend/src/utils/{formatters.ts,validators.ts,accessibility.ts,constants.ts}

# Frontend styles
touch frontend/src/styles/{global.css,theme.ts,variables.css,accessibility.css}

# Frontend types
touch frontend/src/types/{medicine.types.ts,ocr.types.ts,user.types.ts,api.types.ts}

# Frontend storybook and tests
mkdir -p frontend/{.storybook,tests/{unit,integration,e2e}}
touch frontend/.storybook/{main.js,preview.js}
touch frontend/tests/{unit,integration,e2e}/.gitkeep

# BACKEND Structure (Team Member 2)
echo "Creating Backend structure..."
mkdir -p backend/src/{config,controllers,models,routes,services,middleware,utils,database/{migrations,seeders},types}
mkdir -p backend/{tests/{unit,integration,fixtures},docs}

# Create backend files
touch backend/{package.json,.env.example,.eslintrc.js,tsconfig.json}
touch backend/src/{app.ts,server.ts}

# Backend config
touch backend/src/config/{database.ts,auth.ts,ocr.ts,environment.ts}

# Backend controllers
touch backend/src/controllers/{authController.ts,ocrController.ts,medicineController.ts,userController.ts,reminderController.ts}

# Backend models
touch backend/src/models/{User.ts,Medicine.ts,OCRResult.ts,Reminder.ts,ScanHistory.ts}

# Backend routes
touch backend/src/routes/{index.ts,authRoutes.ts,ocrRoutes.ts,medicineRoutes.ts,userRoutes.ts}

# Backend services
touch backend/src/services/{authService.ts,ocrService.ts,medicineService.ts,emailService.ts,notificationService.ts}

# Backend middleware
touch backend/src/middleware/{auth.ts,errorHandler.ts,validation.ts,rateLimiter.ts,logger.ts}

# Backend utils
touch backend/src/utils/{encryption.ts,imageProcessing.ts,validators.ts,helpers.ts}

# Backend database
touch backend/src/database/{connection.ts}
touch backend/src/database/{migrations,seeders}/.gitkeep

# Backend types
touch backend/src/types/index.ts

# Backend tests and docs
touch backend/tests/{unit,integration,fixtures}/.gitkeep
touch backend/docs/{swagger.yaml,api-guide.md}

# ML MODELS Structure (Team Member 3)
echo "Creating ML Models structure..."
mkdir -p ml-models/{notebooks,data/{raw/{medicine_images,medicine_labels,medical_texts},processed/{train,validation,test},augmented},models/{ocr,llm,classification},training,preprocessing,evaluation,inference,utils,configs,checkpoints/{ocr,llm},experiments/mlruns,tests}

# Create ML files
touch ml-models/{requirements.txt,setup.py,.python-version}

# ML notebooks
touch ml-models/notebooks/{01_data_exploration.ipynb,02_ocr_training.ipynb,03_llm_finetuning.ipynb,04_model_evaluation.ipynb}

# ML data folders
touch ml-models/data/raw/{medicine_images,medicine_labels,medical_texts}/.gitkeep
touch ml-models/data/processed/{train,validation,test}/.gitkeep
touch ml-models/data/augmented/.gitkeep

# ML models
touch ml-models/models/ocr/{text_detection.py,character_recognition.py,model_architecture.py}
touch ml-models/models/llm/{medical_qa.py,information_extraction.py,model_config.py}
touch ml-models/models/classification/{medicine_classifier.py,symptom_analyzer.py}

# ML training
touch ml-models/training/{train_ocr.py,train_llm.py,finetune_models.py,hyperparameter_tuning.py}

# ML preprocessing
touch ml-models/preprocessing/{image_preprocessing.py,text_preprocessing.py,data_augmentation.py,feature_extraction.py}

# ML evaluation
touch ml-models/evaluation/{metrics.py,evaluate_ocr.py,evaluate_llm.py,benchmark.py}

# ML inference
touch ml-models/inference/{ocr_inference.py,llm_inference.py,model_server.py,api_handlers.py}

# ML utils
touch ml-models/utils/{data_loader.py,model_utils.py,visualization.py,logging_config.py}

# ML configs
touch ml-models/configs/{ocr_config.yaml,llm_config.yaml,training_config.yaml}

# ML checkpoints and experiments
touch ml-models/checkpoints/{ocr,llm}/.gitkeep
touch ml-models/experiments/mlruns/.gitkeep

# ML tests
touch ml-models/tests/{test_preprocessing.py,test_models.py,test_inference.py}

# DEVOPS Structure (Team Member 4)
echo "Creating DevOps structure..."
mkdir -p devops/{docker,kubernetes/{deployments,services,configmaps,secrets,ingress},terraform/modules/{networking,database,compute},ansible/{playbooks,roles,inventory},ci-cd/{.github/workflows,jenkins,gitlab},monitoring/{prometheus,grafana/{dashboards,datasources},elk},scripts,security/{secrets-management,ssl-certs,security-policies}}

# DevOps docker
touch devops/docker/{Dockerfile.frontend,Dockerfile.backend,Dockerfile.ml,docker-compose.dev.yml}

# DevOps kubernetes
touch devops/kubernetes/deployments/{frontend-deployment.yaml,backend-deployment.yaml,ml-deployment.yaml}
touch devops/kubernetes/services/{frontend-service.yaml,backend-service.yaml,ml-service.yaml}
touch devops/kubernetes/{configmaps,secrets,ingress}/.gitkeep

# DevOps terraform
touch devops/terraform/{main.tf,variables.tf,outputs.tf,providers.tf}
touch devops/terraform/modules/{networking,database,compute}/.gitkeep

# DevOps ansible
touch devops/ansible/{playbooks,roles,inventory}/.gitkeep

# DevOps CI/CD
touch devops/ci-cd/.github/workflows/{frontend-ci.yml,backend-ci.yml,ml-ci.yml,deploy.yml}
touch devops/ci-cd/jenkins/Jenkinsfile
touch devops/ci-cd/gitlab/.gitlab-ci.yml

# DevOps monitoring
touch devops/monitoring/prometheus/{prometheus.yml,alert-rules.yml}
touch devops/monitoring/grafana/{dashboards,datasources}/.gitkeep
touch devops/monitoring/elk/{elasticsearch.yml,logstash.conf,kibana.yml}

# DevOps scripts
touch devops/scripts/{deploy.sh,backup.sh,restore.sh,health-check.sh,setup-env.sh}
chmod +x devops/scripts/*.sh

# DevOps security
touch devops/security/{secrets-management,ssl-certs,security-policies}/.gitkeep

# TESTS Structure (Shared)
echo "Creating shared Tests structure..."
mkdir -p tests/{e2e/{cypress/{integration,fixtures,support},playwright/{tests,config}},performance/{load-tests,stress-tests},security/{penetration-tests,vulnerability-scans},accessibility/a11y-tests}

# Tests folders
touch tests/e2e/cypress/{integration,fixtures,support}/.gitkeep
touch tests/e2e/playwright/{tests,config}/.gitkeep
touch tests/performance/{load-tests,stress-tests}/.gitkeep
touch tests/security/{penetration-tests,vulnerability-scans}/.gitkeep
touch tests/accessibility/a11y-tests/.gitkeep

# DOCS Structure
echo "Creating Documentation structure..."
mkdir -p docs/{architecture,deployment,user-guides,development,compliance}

touch docs/architecture/{system-design.md,database-schema.md,api-documentation.md}
touch docs/deployment/{deployment-guide.md,rollback-procedures.md}
touch docs/user-guides/{user-manual.md,accessibility-guide.md}
touch docs/development/{setup-guide.md,coding-standards.md,contribution-guide.md}
touch docs/compliance/{hipaa-compliance.md,gdpr-compliance.md,accessibility-wcag.md}

# SHARED Structure
echo "Creating Shared resources structure..."
mkdir -p shared/{types,constants,utils}

touch shared/types/common.types.ts
touch shared/constants/index.ts
touch shared/utils/helpers.ts

# ROOT SCRIPTS
echo "Creating root scripts..."
mkdir -p scripts

touch scripts/{setup-project.sh,install-dependencies.sh,run-all-tests.sh,generate-docs.sh}
chmod +x scripts/*.sh

echo ""
echo "=============================================================="
echo "✅ Project structure created successfully!"
echo "=============================================================="
echo ""
echo "Next steps:"
echo "1. cd medical-assistance-app"
echo "2. Initialize git: git init"
echo "3. Review and customize the structure as needed"
echo "4. Start with Week 1 tasks for each team member"
echo ""
echo "Team member directories:"
echo "  - Frontend Developer: ./frontend"
echo "  - Backend Developer: ./backend"
echo "  - AI/ML Developer: ./ml-models"
echo "  - DevOps Engineer: ./devops"
echo ""
echo "Happy coding! 🚀"