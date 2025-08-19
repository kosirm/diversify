# Agent Workflows for Business Idea Generation

## Overview
This document outlines how Augment agents work together to research, analyze, and plan AI business opportunities through GitHub PRs.

## Workflow Process

### Phase 1: Market Research
**Agent**: Market Researcher  
**Objective**: Identify and research one specific AI business opportunity

**Process**:
1. Research current AI trends and market opportunities
2. Identify target markets and customer segments
3. Analyze competitive landscape and market gaps
4. Validate market demand and opportunity size
5. Assess fit with available skills and resources

**Deliverable**: 
- New branch: `idea-[YYYYMMDD]-[short-description]`
- Complete business proposal using template
- PR with market research findings and opportunity assessment

### Phase 2: Business Analysis
**Agent**: Business Analyst  
**Objective**: Validate and analyze the business opportunity in detail

**Process**:
1. Validate market research with additional data
2. Create detailed financial models and projections
3. Assess technical feasibility and resource requirements
4. Develop comprehensive business model
5. Perform risk analysis and mitigation planning

**Deliverable**:
- New branch: `analysis-[YYYYMMDD]-[idea-name]`
- Enhanced business analysis with financial models
- Risk assessment and mitigation strategies
- PR with go/no-go recommendation

### Phase 3: Project Planning
**Agent**: Project Planner  
**Objective**: Create executable implementation plan

**Process**:
1. Break down project into manageable phases
2. Create detailed work breakdown structure
3. Plan resource allocation and timeline
4. Develop quality assurance strategy
5. Design launch and marketing execution plan

**Deliverable**:
- New branch: `plan-[YYYYMMDD]-[idea-name]`
- Comprehensive project plan with timelines
- Resource allocation and budget breakdown
- PR with implementation readiness assessment

## Agent Coordination

### Sequential Workflow
Agents work in sequence, each building on the previous agent's work:
1. **Market Researcher** → Identifies opportunity
2. **Business Analyst** → Validates and analyzes opportunity  
3. **Project Planner** → Creates implementation plan

### Parallel Workflow (Alternative)
For faster iteration, agents can work in parallel on different ideas:
- Multiple Market Researchers generate different ideas simultaneously
- Business Analysts pick up validated ideas for deeper analysis
- Project Planners create implementation plans for approved ideas

## GitHub Integration

### Branch Naming Convention
- Market Research: `idea-[YYYYMMDD]-[short-description]`
- Business Analysis: `analysis-[YYYYMMDD]-[idea-name]`
- Project Planning: `plan-[YYYYMMDD]-[idea-name]`

### PR Requirements
Each PR must include:
- Complete documentation using provided templates
- Supporting research and analysis files
- Clear recommendation in PR description
- Evaluation against criteria in `/templates/evaluation-criteria.md`

### Review Process
1. **Automated Checks**: Ensure all template sections are completed
2. **Peer Review**: Other agents can comment and provide feedback
3. **Human Review**: Final decision on whether to proceed with idea
4. **Merge Decision**: Approved ideas merged to main branch

## Quality Standards

### Research Quality
- Use credible sources and cite references
- Provide quantitative data where possible
- Include multiple perspectives and scenarios
- Validate assumptions with evidence

### Analysis Quality
- Show detailed calculations and assumptions
- Consider multiple scenarios (conservative, realistic, optimistic)
- Address potential objections and concerns
- Provide clear decision criteria

### Planning Quality
- Create actionable, specific tasks
- Include realistic timelines and dependencies
- Plan for risks and contingencies
- Establish measurable success criteria

## Success Metrics

### Individual Agent Performance
- **Market Researcher**: Quality of market insights, opportunity identification accuracy
- **Business Analyst**: Accuracy of financial projections, thoroughness of analysis
- **Project Planner**: Feasibility of plans, quality of risk management

### Overall Workflow Performance
- Time from idea generation to implementation plan
- Quality of final business proposals
- Success rate of implemented ideas
- Learning and improvement over time

## Continuous Improvement

### Feedback Loops
- Track outcomes of implemented ideas
- Analyze what worked vs. what didn't
- Update agent prompts based on learnings
- Refine evaluation criteria and templates

### Agent Learning
- Agents review previous successful/unsuccessful ideas
- Learn from feedback and outcomes
- Improve research and analysis techniques
- Adapt to changing market conditions

This workflow ensures systematic, thorough evaluation of AI business opportunities while leveraging the strengths of specialized agents and maintaining quality standards.
