#!/bin/bash

# DIVERSIFY Project Workflow Script
# Simplified version for AI business idea management

# Function to check if we're in a git repository
check_git_repo() {
    if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
        echo "Error: Not in a git repository"
        exit 1
    fi
}

# Function to list all open PRs
list_prs() {
    echo "Fetching open Pull Requests..."
    gh pr list --state open
}

# Function to list all issues
list_issues() {
    echo "Fetching GitHub Issues..."
    gh issue list --state open
}

# Function to create a new issue for agents
create_agent_issue() {
    local agent_type="$1"
    local idea_topic="$2"
    local description="$3"
    
    if [ -z "$agent_type" ] || [ -z "$idea_topic" ]; then
        echo "Usage: ./diversify.sh agent-issue <agent-type> <idea-topic> [description]"
        echo ""
        echo "Agent types:"
        echo "  market-research    - Generate new business ideas"
        echo "  business-analysis  - Deep analysis of existing ideas"
        echo "  project-planning   - Implementation plans for approved ideas"
        echo ""
        echo "Examples:"
        echo "  ./diversify.sh agent-issue market-research \"AI Writing Assistant\" \"Tool for content creators\""
        echo "  ./diversify.sh agent-issue business-analysis \"Senior Brain Games\" \"Analyze the mobile game idea\""
        exit 1
    fi

    local title="[$agent_type] Generate AI Business Idea: $idea_topic"
    local labels="$agent_type,business-idea"
    
    case "$agent_type" in
    "market-research")
        local body="## Task for Market Researcher Agent

Please research and create a complete business proposal for: **$idea_topic**

$description

## Instructions
1. Read the agent prompt: \`/agents/market-researcher-prompt.md\`
2. Use the business template: \`/templates/business-idea-template.md\`
3. Follow the PR guide: \`/docs/agent-pr-guide.md\`

## Requirements
- Research market size and trends
- Identify target audience and pain points
- Analyze competition and differentiation opportunities
- Provide realistic financial projections
- Assess technical feasibility with available skills
- Include risk assessment and mitigation strategies

## Deliverable
- Create new branch: \`idea-[YYYYMMDD]-[short-description]\`
- Complete business proposal in \`/ideas/[folder]/business-proposal.md\`
- Submit PR with evaluation score and recommendation

## Skills Available
- 25+ years software development
- Strong writing abilities
- Art and sculpting background
- Humor and creativity
- Limited budget (<\$2000 initial investment)

## Success Criteria
- Complete all template sections thoroughly
- Score using evaluation criteria
- Provide clear proceed/modify/reject recommendation
- Include specific next steps for validation"
        ;;
    "business-analysis")
        local body="## Task for Business Analyst Agent

Please perform detailed business analysis for: **$idea_topic**

$description

## Instructions
1. Read the agent prompt: \`/agents/business-analyst-prompt.md\`
2. Review existing idea in \`/ideas/\` directory
3. Use the business template for enhanced analysis
4. Follow the PR guide: \`/docs/agent-pr-guide.md\`

## Requirements
- Validate market research with additional data
- Create detailed financial models and projections
- Assess technical feasibility and resource requirements
- Develop comprehensive business model
- Perform risk analysis and mitigation planning

## Deliverable
- Create new branch: \`analysis-[YYYYMMDD]-[idea-name]\`
- Enhanced business analysis with detailed financial models
- Risk assessment matrix
- Updated PR with go/no-go recommendation

## Success Criteria
- Data-driven validation of market opportunity
- Realistic financial projections with clear assumptions
- Actionable implementation plan with specific next steps
- Comprehensive risk assessment with mitigation strategies"
        labels="business-analysis,business-idea"
        ;;
    "project-planning")
        local body="## Task for Project Planner Agent

Please create detailed implementation plan for: **$idea_topic**

$description

## Instructions
1. Read the agent prompt: \`/agents/project-planner-prompt.md\`
2. Review existing analysis in \`/ideas/\` directory
3. Follow the PR guide: \`/docs/agent-pr-guide.md\`

## Requirements
- Break down project into manageable phases
- Create detailed work breakdown structure
- Plan resource allocation and timeline
- Develop quality assurance strategy
- Design launch and marketing execution plan

## Deliverable
- Create new branch: \`plan-[YYYYMMDD]-[idea-name]\`
- Comprehensive project plan with timelines
- Resource allocation and budget breakdown
- Implementation-ready roadmap

## Success Criteria
- Clear, actionable tasks with realistic timelines
- Comprehensive resource and budget planning
- Proactive risk identification and mitigation
- Quality assurance throughout development
- Realistic launch and growth strategies"
        labels="project-planning,business-idea"
        ;;
    *)
        echo "Error: Unknown agent type. Use market-research, business-analysis, or project-planning"
        exit 1
        ;;
    esac

    echo "Creating issue for $agent_type agent: $idea_topic"
    gh issue create --title "$title" --body "$body" --label "$labels"
}

# Function to view issue details
view_issue() {
    local issue_number=$1

    if [ -z "$issue_number" ]; then
        echo "Usage: ./diversify.sh issue-view <issue-number>"
        echo "Available issues:"
        list_issues
        exit 1
    fi

    echo "Viewing issue #$issue_number details..."
    gh issue view "$issue_number"
}

# Function to close an issue
close_issue() {
    local issue_number=$1
    local comment="$2"

    if [ -z "$issue_number" ]; then
        echo "Usage: ./diversify.sh issue-close <issue-number> [\"closing comment\"]"
        echo "Available issues:"
        list_issues
        exit 1
    fi

    local cmd="gh issue close \"$issue_number\""

    if [ -n "$comment" ]; then
        cmd="$cmd --comment \"$comment\""
    fi

    echo "Closing issue #$issue_number..."
    eval $cmd
}

# Function to view PR details
view_pr() {
    local pr_number=$1

    if [ -z "$pr_number" ]; then
        echo "Usage: ./diversify.sh pr-view <pr-number>"
        echo "Available PRs:"
        list_prs
        exit 1
    fi

    echo "Viewing PR #$pr_number details..."
    gh pr view "$pr_number"
}

# Function to approve and merge a PR
merge_pr() {
    local pr_number=$1
    local merge_method=${2:-"squash"}

    if [ -z "$pr_number" ]; then
        echo "Usage: ./diversify.sh pr-merge <pr-number> [merge-method]"
        echo "Merge methods: merge, squash (default), rebase"
        echo "Available PRs:"
        list_prs
        exit 1
    fi

    echo "Merging PR #$pr_number using $merge_method method..."

    # First, make sure we're on main
    git checkout main
    git pull origin main

    # Merge the PR
    case "$merge_method" in
    "merge")
        gh pr merge "$pr_number" --merge
        ;;
    "rebase")
        gh pr merge "$pr_number" --rebase
        ;;
    "squash"|*)
        gh pr merge "$pr_number" --squash
        ;;
    esac

    echo "✓ PR #$pr_number merged successfully"
    echo "Pulling latest changes to main..."
    git pull origin main
}

# Function to show repository status
show_status() {
    echo "=== DIVERSIFY Repository Status ==="
    echo ""
    echo "📋 Open Issues:"
    gh issue list --state open --limit 5
    echo ""
    echo "🔄 Open Pull Requests:"
    gh pr list --state open --limit 5
    echo ""
    echo "💡 Recent Business Ideas:"
    if [ -d "ideas" ]; then
        ls -la ideas/ | grep "^d" | tail -5
    else
        echo "No ideas directory found"
    fi
}

# Main script
check_git_repo

case "$1" in
"agent-issue")
    create_agent_issue "$2" "$3" "$4"
    ;;
"issue-list")
    list_issues
    ;;
"issue-view")
    view_issue "$2"
    ;;
"issue-close")
    close_issue "$2" "$3"
    ;;
"pr-list")
    list_prs
    ;;
"pr-view")
    view_pr "$2"
    ;;
"pr-merge")
    merge_pr "$2" "$3"
    ;;
"status")
    show_status
    ;;
*)
    echo "DIVERSIFY Project Workflow Script"
    echo "Usage: ./diversify.sh {command} [args]"
    echo ""
    echo "Commands:"
    echo "  agent-issue <type> <topic> [desc]  - Create issue for remote agents"
    echo "  issue-list                         - List all open issues"
    echo "  issue-view <number>                - View issue details"
    echo "  issue-close <number> [comment]     - Close an issue"
    echo "  pr-list                            - List all open pull requests"
    echo "  pr-view <number>                   - View PR details"
    echo "  pr-merge <number> [method]         - Merge a PR (squash/merge/rebase)"
    echo "  status                             - Show repository status"
    echo ""
    echo "Agent Types:"
    echo "  market-research    - Generate new business ideas"
    echo "  business-analysis  - Deep analysis of existing ideas"
    echo "  project-planning   - Implementation plans for approved ideas"
    echo ""
    echo "Examples:"
    echo "  ./diversify.sh agent-issue market-research \"AI Writing Assistant\""
    echo "  ./diversify.sh status"
    echo "  ./diversify.sh pr-list"
    echo "  ./diversify.sh pr-merge 5 squash"
    exit 1
    ;;
esac
