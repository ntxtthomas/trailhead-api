# trailhead-api
Rails API Backend Serving Data to `trailhead-web`, a React UI

# Trailhead — National Parks Explorer

Trailhead is a full-stack project that combines a **Ruby on Rails API** with a **React SPA frontend** to explore and visualize data from the **National Park Service API** and **Recreation.gov (RIDB)**.  

Users can browse parks, view them on an interactive 3D map, and save favorites after logging in.

---

## Tech Stack Overview

| Layer | Tech |
|--------|------|
| **Backend**           | Ruby on Rails (API mode), PostgreSQL + PostGIS
| **Frontend**          | React + Deck.gl + Mapbox GL JS
| **Auth**              | JWT (via Devise-JWT)
| **External APIs**     | National Park Service API, Recreation.gov (RIDB)

---

## Repo Structure

| Repo | Purpose |
|--------|------|
| trailhead-api/        | # Rails API backend
| trailhead-web/        | # React frontend SPA
| trailhead-mobile/     | # (future) React Native app

---

## Engineering Overview

Trailhead adheres to modern software engineering principles and Rails + React design patterns.
This ensures maintainable, scalable, and testable code as the project grows.

Architectural Principles

| Principle | Example |
|--------|------|
| Separation of Concerns              | Rails API and React SPA are decoupled — clear distinction between data services and UI
| Single Source of Truth              | The Rails API (backed by Postgres/PostGIS) owns and maintains all park and recreation data
| Stateless API Design                | Authentication handled via JWT tokens; all client sessions are stateless
| RESTful Routing                     | Rails controllers expose standard REST endpoints (index, show, etc.)
| Abstraction and Encapsulation       | External API integrations (NPS, RIDB) are abstracted through service objects or jobs
| Scalability & Extensibility         | PostGIS enables advanced geospatial queries without refactoring core models
| Predictable Data Layer              | Serializers control how models are represented in JSON, ensuring a consistent API schema
| Declarative Frontend Architecture   | React components and Deck.gl layers describe what the UI should render, not how

Feature Functionality

| Category | Description |
|--------|------|
| REST API                            | Rails API exposes structured, versioned endpoints under /api/v1
| Data Synchronization                | External APIs (NPS, RIDB) fetched manually and cached in Postgres
| Geospatial Analysis                 | PostGIS provides spatial columns and queries for map layers
| JWT Authentication                  | Secure, stateless login system for web and mobile clients
| Frontend Rendering                  | React + Deck.gl + Mapbox visualize data in both 2D and 3D
| User Profiles & Favorites           | Authenticated users can save parks or recreation areas
| Serialization Layer                 | ActiveModelSerializer formats API responses for frontend consumption

Core Design Patterns

| Pattern | Purpose |
|--------|------|
| Service Objects                     | Encapsulate API integrations and background jobs
| Serializer Pattern                  | Controls data exposure and response formatting
| ActiveRecord ORM                    | Manages persistence and model associations
| Job Pattern                         | Handles asynchronous or long-running sync operations
| Declarative Components              | React functional components follow compositional design
| Data Fetching Hooks                 | Encapsulate API logic within reusable React hooks
| Map Abstraction Layer               | Deck.gl manages visualization separate from data state


