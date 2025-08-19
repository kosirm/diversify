# Agent Workflows for Business Idea Generation

## Overview
This document outlines how Augment agents generate and evaluate AI business opportunities through GitHub PRs using a simplified, practical workflow.

## Simplified Workflow Process

### Phase 1: Idea Generation (Start Here)
**Agent**: Market Researcher
**Objective**: Generate diverse AI business opportunities quickly

**Process**:
1. Research current AI trends and market opportunities
2. Identify target markets and customer segments
3. Analyze competitive landscape and market gaps
4. Create complete business proposal with basic financial projections
5. Assess fit with available skills and resources

**Deliverable**:
- New branch: `idea-[YYYYMMDD]-[short-description]`
- Complete business proposal using template
- PR with market research findings and recommendation

**Goal**: Generate multiple diverse ideas for review and selection

### Phase 2: Deep Analysis (Only for Exciting Ideas)
**Agent**: Business Analyst
**Objective**: Perform detailed analysis on selected promising ideas

**Process**:
1. Validate market research with additional data
2. Create detailed financial models and projections
3. Assess technical feasibility and resource requirements
4. Develop comprehensive business model
5. Perform risk analysis and mitigation planning

**Deliverable**:
- Enhanced business analysis with detailed financial models
- Risk assessment and mitigation strategies
- Updated PR or new branch with deep analysis

### Phase 3: Implementation Planning (Only for Approved Ideas)
**Agent**: Project Planner
**Objective**: Create executable implementation plan for approved ideas

**Process**:
1. Break down project into manageable phases
2. Create detailed work breakdown structure
3. Plan resource allocation and timeline
4. Develop quality assurance strategy
5. Design launch and marketing execution plan

**Deliverable**:
- Comprehensive project plan with timelines
- Resource allocation and budget breakdown
- Implementation-ready roadmap

## Recommended Approach

### Start Simple: Single Agent Idea Generation
1. **Multiple Market Researcher Agents** generate different business ideas
2. **Human Review** selects 1-2 most exciting opportunities
3. **Business Analyst Agent** performs deep analysis on winners only
4. **Project Planner Agent** creates implementation plan for approved ideas

### Benefits of This Approach
- **Faster Idea Generation**: More diverse ideas in less time
- **Reduced Analysis Paralysis**: Deep analysis only where it matters
- **Better Resource Utilization**: Focus effort on promising opportunities
- **Practical Decision Making**: Human judgment guides where to invest analysis time

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
