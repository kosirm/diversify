# Agent PR Creation Guide

## Overview
This guide explains how Augment agents should create GitHub PRs for business idea proposals in the DIVERSIFY repository.

## Repository Information
- **Repository**: `kosirm/diversify`
- **Main Branch**: `main`
- **Base Directory**: `DIVERSIFY/`

## Step-by-Step PR Process

### 1. Create New Branch
Create a branch following the naming convention:
- Market Research: `idea-[YYYYMMDD]-[short-description]`
- Business Analysis: `analysis-[YYYYMMDD]-[idea-name]`
- Project Planning: `plan-[YYYYMMDD]-[idea-name]`

Example: `idea-20250119-ai-mobile-game`

### 2. Create Idea Directory
For new ideas, create directory structure:
```
DIVERSIFY/ideas/[XXX-idea-name]/
├── business-proposal.md
├── market-research/
├── status.md
└── README.md
```

### 3. Use Templates
Always use the provided templates:
- `/DIVERSIFY/templates/business-idea-template.md` for business proposals
- `/DIVERSIFY/templates/evaluation-criteria.md` for scoring

### 4. Complete Documentation
Ensure all sections of the template are thoroughly completed:
- Executive Summary
- Market Opportunity
- Business Concept
- Technical Implementation
- Resource Requirements
- Marketing Strategy
- Risk Assessment
- Financial Projections
- Implementation Timeline
- Agent Analysis

### 5. Create Supporting Files
Include relevant supporting documentation:
- Market research data
- Competitor analysis
- Financial calculations
- Technical specifications
- Risk matrices

### 6. Commit Changes
Use clear, descriptive commit messages:
```
Add business proposal: AI-powered mobile game for seniors

- Complete market research and opportunity analysis
- Detailed technical implementation plan
- Financial projections and risk assessment
- Recommendation: Proceed with MVP development
```

### 7. Create Pull Request
Create PR with comprehensive description including:

#### PR Title Format
`[AGENT-TYPE] Business Idea: [Idea Name]`

Examples:
- `[MARKET-RESEARCH] Business Idea: AI-Powered Senior Mobile Game`
- `[BUSINESS-ANALYSIS] Business Idea: Content Automation Platform`
- `[PROJECT-PLANNING] Business Idea: Creative Services Marketplace`

#### PR Description Template
```markdown
## Business Idea Summary
Brief 2-3 sentence overview of the proposed business opportunity.

## Agent Analysis
- **Agent Type**: Market Researcher / Business Analyst / Project Planner
- **Research Date**: [Date]
- **Confidence Level**: High / Medium / Low

## Key Findings
- Market opportunity size and growth potential
- Target audience and their pain points
- Competitive landscape and differentiation
- Revenue model and financial projections
- Implementation feasibility and timeline

## Evaluation Score
Based on evaluation criteria in `/templates/evaluation-criteria.md`:
- **Market Opportunity**: X/10
- **Skills & Resource Fit**: X/10
- **Revenue Potential**: X/10
- **Implementation Feasibility**: X/10
- **Strategic Value**: X/10
- **Total Weighted Score**: X.X/10

## Recommendation
**[PROCEED / MODIFY / REJECT]**

### Rationale
Explain the reasoning behind the recommendation.

### Next Steps
If proceeding:
1. Specific immediate actions required
2. Key decisions needed
3. Success criteria for moving forward

If modifying:
1. What needs to be changed
2. Additional research required
3. Revised timeline or approach

If rejecting:
1. Primary reasons for rejection
2. Lessons learned
3. Alternative approaches to consider

## Files Changed
- [ ] `/ideas/[idea-name]/business-proposal.md` - Complete business proposal
- [ ] `/ideas/[idea-name]/status.md` - Status tracking
- [ ] `/ideas/[idea-name]/README.md` - Idea overview
- [ ] Supporting research files

## Review Checklist
- [ ] All template sections completed
- [ ] Financial projections included
- [ ] Risk assessment performed
- [ ] Implementation timeline provided
- [ ] Evaluation criteria scored
- [ ] Clear recommendation given
```

### 8. Request Review
Tag relevant reviewers and add labels:
- `business-idea` - All business idea PRs
- `market-research` - Market research phase
- `business-analysis` - Business analysis phase
- `project-planning` - Project planning phase
- `high-priority` - High-scoring opportunities
- `needs-review` - Ready for human review

## Quality Standards

### Research Quality
- Cite credible sources
- Provide quantitative data
- Include multiple scenarios
- Validate key assumptions

### Documentation Quality
- Complete all template sections
- Use clear, professional language
- Include specific, actionable details
- Provide supporting evidence

### Analysis Quality
- Show detailed calculations
- Consider risks and mitigation
- Provide realistic timelines
- Include success metrics

## Common Mistakes to Avoid

1. **Incomplete Templates**: Ensure all sections are thoroughly completed
2. **Vague Recommendations**: Provide specific, actionable next steps
3. **Missing Financial Analysis**: Always include detailed cost/revenue projections
4. **Unrealistic Timelines**: Be conservative with time estimates
5. **Insufficient Risk Analysis**: Identify and plan for potential problems
6. **Poor Market Research**: Use credible sources and current data
7. **Skills Mismatch**: Ensure ideas align with available capabilities

## Success Metrics

PRs will be evaluated on:
- Completeness and quality of research
- Feasibility of implementation plan
- Alignment with available resources
- Potential for revenue generation
- Strategic value for portfolio

## Example PR
See `/examples/sample-pr.md` for a complete example of a well-structured business idea PR.

Remember: The goal is to provide comprehensive, actionable intelligence that enables confident decision-making about AI business opportunities.
