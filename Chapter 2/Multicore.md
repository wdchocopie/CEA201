# Multicore, MIC's, GPGPU's
* **Multicore:**
   * Multiple processing core
   * Each core act like independent processor
   * Increase performance without increasing clockrate
   * Concept: Use 2 simple processor than 1 complex processor
* **MIC \(Many intergrated core\):**
   * Contain large number of simple core optimized for specific tasks 
   * Homogeneous \(đồng nhất\) of general processor on single chip
* **GPGPU (General-Purpose computing on GPUs):**
   * containing thousands of simpler cores optimized for parallel processing
   * Used as vector processor
   * Core designed to perform parallel operation on graphic data

| Features | Multicore | MIC | GPGPU |
| --- | --- | --- | ----|
| Core Type | Complex	| Simpler	 | Simpler, parallel processing
|Number of Cores | 2-16	| 100 - 1000 | 1000+
| Idea | General-purpose | Highly parallel workloads  | Highly parallel workloads
| Example | Web browsing | Scientific computing, Simulation | Machine learning, Video Rendering|
