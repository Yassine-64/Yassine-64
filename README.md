

```python
class AIEngineer:
    def __init__(self):
        self.name = "Yassine Mazhare"
        self.title = "AI & RAG Systems Developer"
        self.specialization = "Building intelligent systems that understand, retrieve, and generate"
        
        self.ai_expertise = {
            "rag_systems": ["Vector Databases", "Embedding Models", "Semantic Search"],
            "ai_tools": ["LangChain", "OpenAI API", "Hugging Face", "ChromaDB"],
            "ml_frameworks": ["TensorFlow", "PyTorch", "Transformers", "LlamaIndex"]
        }
        
        self.fullstack_skills = {
            "frontend": ["React", "Next.js", "TypeScript", "Tailwind CSS"],
            "backend": ["FastAPI", "Node.js", "Python", "API Development"],
            "databases": ["PostgreSQL", "Supabase", "Pinecone", "Weaviate"],
            "deployment": ["Vercel", "Docker", "AWS", "Cloud Functions"]
        }
    
    def build_rag_pipeline(self, documents: str) -> str:
        """Advanced RAG implementation with semantic search"""
        return f"Processing {len(documents)} documents → Embeddings → Vector Search → LLM Generation"
    
    def current_focus(self) -> list:
        return [
            "🤖 Multi-modal RAG systems",
            "🔧 AI-powered development tools", 
            "📊 Intelligent document processing",
            "⚡ Real-time semantic search engines",
            "🌐 Full-stack AI applications"
        ]
    
    def __str__(self):
        return f"{self.name} - {self.title} | {self.specialization}"

# Always building the future of AI-human interaction
yassine = AIEngineer()
print(yassine)  # Yassine Mazhare - AI & RAG Systems Developer | Building intelligent systems...
```

