# trailhead-api
Rails API Backend Serving Data to `trailhead-web`, a React UI

# Trailhead — National Parks Explorer

Trailhead is a full-stack application that combines a Ruby on Rails API with a React single-page application to explore and visualize data from the National Park Service API and Recreation.gov (RIDB).

Users can browse national parks and recreation areas, explore them on an interactive map, stack queries to discover tailored adventures, and save favorites after authenticating.

In addition to traditional search and filtering, Trailhead is designed to support an AI-assisted, natural-language search experience using Retrieval-Augmented Generation (RAG) and the OpenAI API.

Key Features
- Browse and explore U.S. national parks and recreation areas
- Interactive map-based visualization (2D / 3D)
- User authentication and profiles
- Save and manage favorite locations
- Advanced geospatial queries (distance, proximity, regions)
- AI-assisted search for complex, multi-constraint queries
(e.g. “Backpacking options within 3 hours of Denver airport that allow dogs and include lakes or waterfalls”)

System Architecture (High-Level)

Trailhead follows a decoupled architecture:
- Rails API acts as the single source of truth
- React SPA consumes the API over HTTPS
- External APIs are consumed, normalized, and cached by the backend
- AI services are layered on top of structured data, not used as a replacement for it
               
               React SPA ──▶ Rails API ──▶ Postgres / PostGIS
                                 │
                                 ├──▶ National Park Service API
                                 ├──▶ Recreation.gov (RIDB)
                                 └──▶ OpenAI API (RAG-powered search)

---

## Tech Stack Overview

| Layer | Tech |
|--------|------|
| **Backend**           | Ruby on Rails (API mode)
| **Database**          | PostgreSQL + PostGIS (Fly.io)
| **Frontend**          | React + Deck.gl + Mapbox GL JS
| **Auth**              | JWT (via Devise + Devise-JWT)
| **External APIs**     | National Park Service API, Recreation.gov (RIDB)
| **AI / Search**       | OpenAI API + Retrieval-Augmented Generation (RAG)
| **CI/CD**             | GitHub Actions
| **Hosting**           | Fly.io (API + DB), Vercel or Netlify (Frontend)


---

## Repo Structure

| Repo | Purpose |
|--------|------|
| trailhead-api/        | # Rails API backend
| trailhead-web/        | # React frontend SPA

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
| Progressive Enhancement             | AI features augment existing structured search rather than replace it

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
| AI-Assisted Search                  | Natural-language queries mapped to structured filters via RAG


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
| AI as a Layer                       | LLMs augment search and discovery, not data ownership

Project Status

Trailhead is an actively evolving project designed as:
- a learning platform
- a portfolio piece
Detailed architectural decisions, implementation notes, and planning artifacts are documented in the GitHub Wiki.

Documentation

README: High-level overview and architecture

Wiki:
API design 
Data modeling 
RAG architecture 
Deployment strategy 
Engineering decisions (ADRs)
