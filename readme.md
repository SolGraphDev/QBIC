# QBIC: Multi-Agent Programming Across Creative Tools

**QBIC** is a next-generation agent orchestration framework that enables intelligent agents to control and coordinate actions across creative and technical tools in real time using the **Model Context Protocol (MCP)**.

It allows developers and AI systems to construct **natural language-driven workflows**, where tools like **Figma**, **Cursor**, **IDE environments**, and more can be interconnected through a shared protocol layer. Agents communicate via MCP to query context, modify content, and trigger multi-step actions across systems—bridging the gap between intent, interface, and execution.

While QBIC is a broad framework, we currently demonstrate one of its abilities: **controlling Figma design workflows through Cursor's AI assistant**, showcasing how dialogue-based programming can manipulate layout, text, components, and annotations. This is just one application—QBIC is designed for far more.

---

## 🧠 Core Capabilities

### 🔄 Cross-Application Agent Orchestration

* Seamlessly connect agents to tools like Figma, IDEs, code editors, and design systems
* Trigger context-aware operations without manual GUI interaction
* Maintain synchronized, multi-domain system state across connected tools

### 💬 Natural Language to System Execution

* Parse conversational instructions into structured actions
* Create or modify content (e.g., UI, code, metadata) through composable tools
* Chain logical operations across different platforms from a single agent

### 🧩 Modular MCP Tool Interface

* Expose each tool as a declarative command surface via MCP
* Define tasks, introspection points, creation utilities, and response hooks
* Enable agent-to-agent and agent-to-environment negotiation via shared context

### 🧪 Use Case Demonstration (Figma + Cursor)

In our featured demo:

* Cursor connects to QBIC via MCP
* Cursor receives user dialogue and issues MCP commands
* Figma plugin reacts to tool-level operations such as:

  * `create_rectangle`, `create_text`, `scan_text_nodes`
  * `set_multiple_text_contents`, `get_reactions`, `create_connections`

This scenario illustrates **design automation**, but similar logic applies to **document generation**, **IDE manipulation**, or **task automation**.

---

## 🧬 Architecture Overview

QBIC consists of:

* **MCP Server** (`src/qbic_mcp/`) — Core server for executing structured MCP commands and managing tool schemas
* **Plugin Layer** (`src/cursor_mcp_plugin/` as Figma example) — Tool-specific bridges that expose runtime controls and state
* **WebSocket Message Hub** (`src/socket.ts`) — Event pipe for real-time messaging between agents and connected environments

---

## ⚡ Example Prompts & Agent Workflows

* "Generate a 3-section homepage with hero, features, and footer."

  * Agent synthesizes layout in Figma using component tools

* "Replace all placeholder copy with production text."

  * Batch edit through `scan_text_nodes` and `set_multiple_text_contents`

* "Convert prototype connections into FigJam-style connectors."

  * Agent parses `get_reactions`, styles connections, and applies `create_connections`

* "Scan all design annotations and classify them."

  * Combines `get_annotations` with structured metadata tagging

---

## 🚀 Getting Started

### 1. Install Bun

```bash
curl -fsSL https://bun.sh/install | bash
```

### 2. Run Setup

```bash
bun setup
```

This registers QBIC in your Cursor's MCP config.

### 3. Start WebSocket Hub

```bash
bun socket
```

### 4. Launch MCP Server

```bash
bunx qbic-mcp
```

### 5. Load Figma Plugin (Development Mode)

* Figma → Plugins → Development → Link Existing Plugin
* Select `src/cursor_mcp_plugin/manifest.json`

---

## 🔧 MCP Tool Categories

### Structural Access

* `get_document_info`, `get_selection`, `get_node_info`, `read_my_design`

### Content Operations

* `create_rectangle`, `create_text`, `create_frame`
* `set_text_content`, `set_multiple_text_contents`

### Annotation & Metadata

* `get_annotations`, `set_annotation`, `set_multiple_annotations`
* `annotation_conversion_strategy`

### Layout Management

* `set_layout_mode`, `set_padding`, `set_item_spacing`
* `set_layout_sizing`, `resize_node`

### Visual Editing

* `set_fill_color`, `set_stroke_color`, `set_corner_radius`
* `clone_node`, `delete_multiple_nodes`

### Prototype Conversion

* `get_reactions`, `create_connections`, `set_default_connector`

### Utility Tools

* `export_node_as_image`
* Strategy prompts like `design_strategy`, `reaction_to_connector_strategy`

---

## 🧠 Philosophy: What is QBIC?

QBIC is not a plugin.
It is a **multi-agent, cross-environment automation platform** built on standard protocols. It empowers:

* AI assistants to act as real operational collaborators
* Developers to define intent → execution bridges using common schemas
* Teams to standardize multi-tool automation across creative workflows

Whether it's Figma today or VSCode, Photoshop, or Slack tomorrow —
**QBIC aims to become the protocol layer of agent-centric creation.**

---

## 📜 License

MIT License
