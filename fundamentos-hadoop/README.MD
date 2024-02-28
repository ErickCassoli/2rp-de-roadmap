## Anotações do Curso - Fundamentos, Ecossistema e Arquitetura Hadoop

### Introdução ao Hadoop:

- O Hadoop é uma plataforma robusta desenvolvida em Java, voltada para computação distribuída.
- Sua principal finalidade é lidar com grandes volumes de dados de forma eficiente e tolerante a falhas.
- Baseia-se em um modelo de cluster, distribuindo o processamento e armazenamento de dados entre os nós.

### Componentes Essenciais do Ecossistema Hadoop:

1. **HDFS (Hadoop Distributed File System):**
   - Sistema de Arquivos Distribuído do Hadoop.
   - Projetado para armazenar grandes conjuntos de dados de forma confiável e escalável.

2. **YARN (Yet Another Resource Negotiator):**
   - Gerenciador de recursos do Hadoop.
   - Permite a alocação dinâmica de recursos entre as aplicações em um cluster.

3. **MapReduce:**
   - Modelo de programação para processamento paralelo de dados em clusters de computadores.

4. **Spark:**
   - Mecanismo de processamento de dados em memória.
   - Oferece uma alternativa mais rápida ao MapReduce para certas cargas de trabalho.

5. **Pig e Hive:**
   - Linguagens de consulta de alto nível para processamento de dados no Hadoop.
   - Facilitam a escrita e execução de consultas complexas.

6. **HBase:**
   - Banco de dados NoSQL distribuído, orientado a colunas e altamente escalável.

7. **Mahout e Spark MLlib:**
   - Bibliotecas de aprendizado de máquina para análises preditivas e exploratórias em grandes conjuntos de dados.

8. **Apache Drill:**
   - Mecanismo de consulta SQL para dados semiestruturados e estruturados armazenados em diferentes formatos.

9. **Zookeeper:**
   - Serviço de coordenação distribuída para gerenciar e coordenar serviços em um cluster Hadoop.

10. **Oozie:**
    - Sistema de agendamento de fluxo de trabalho para definir e executar fluxos de trabalho complexos no Hadoop.

### Arquitetura do Hadoop:

- A arquitetura do Hadoop é baseada em um modelo mestre-escravo.
- O nó mestre consiste em um NameNode (para HDFS) e ResourceManager (para YARN).
- Os nós escravos consistem em DataNodes (para HDFS) e NodeManagers (para YARN).
- O NameNode gerencia o namespace do sistema de arquivos e controla o acesso aos arquivos.
- O ResourceManager aloca recursos para as aplicações e monitora sua execução nos nós do cluster.
- Os DataNodes armazenam e recuperam os blocos de dados e realizam tarefas de leitura/gravação no HDFS.
- Os NodeManagers gerenciam os recursos de computação (CPU, memória) nos nós do cluster e executam tarefas em contêineres.

### Conclusão:

- Compreender a arquitetura do Hadoop é essencial para projetar, implantar e gerenciar eficientemente clusters Hadoop.
- A arquitetura mestre-escravo distribui as responsabilidades entre os diferentes componentes para garantir um funcionamento suave e confiável do sistema.
- Cada componente desempenha um papel crítico na arquitetura e é fundamental para o desempenho global do cluster Hadoop.