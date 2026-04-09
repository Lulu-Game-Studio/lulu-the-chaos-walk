# Lulu: The Chaos Walk - GDD

## 1. General Information

- **Game Name:** Lulu: The Chaos Walk
- **Genre:** 2D Platformer / Arcade
- **Platform:** PC
- **Game Engine:** Godot Engine
- **Estimated Playtime:** 1–2 minutes per level

## 2. Game Concept

The player controls **Lulu**, a mischievous dog who has escaped from home.  
The objective is to **reach home without pooping**, while collecting biscuits that help Lulu stay in control.

The game combines platformer mechanics with a humorous urgency system that forces the player to make quick decisions, resulting in short, fun, and replayable sessions.

## 3. Core Mechanics

- Side-scrolling 2D movement (walk, run, jump).
- An **urgency bar** that represents Lulu’s need to poop; if it fills up, the player loses.
- Biscuits scattered throughout the level that reduce the urgency bar.
- End goal = Lulu’s house (victory).

## 4. Controls

| Action     | Key / Input    | Notes                                     |
|------------|----------------|--------------------------------------------|
| Walk       | ← / A   → / D  | Walking animation                          |
| Run        | Shift + ← →    | Urgency bar increases faster               |
| Jump       | ↑ / Space / W  | Jump over obstacles                        |
| Sit        | ↓ / S          | Pauses the game / urgency timer            |
| Idle       | Automatic      | When no input is given                     |
| Poop       | Automatic      | When urgency bar is full → Game Over       |

## 5. Character

- Lulu, the main playable dog.
- Animations: idle, walk, run, jump, sit, poop.
- Active collision for obstacles and pickups.
- Exaggerated expressions to reflect urgency.

## 6. Obstacles

- On collision:
  - Urgency bar increases.

## 7. Pickups

- **Biscuits:** reduce the urgency bar.
- Strategically placed to create decision-making moments.

## 8. Progression and Feedback System

- The player progresses by moving through the level until reaching Lulu’s house.
- The **urgency bar** indicates how close Lulu is to losing; if it fills up, the game ends.
- Collecting **biscuits** reduces urgency, providing positive feedback.
- There is no numeric score; the main goal is to **survive and reach the end of the level**.

## 9. Defeat Conditions

- Urgency bar fills up → Lulu poops → Game Over.
- Falling into gaps → Game Over.
- A restart button appears after losing.

## 10. User Interface (UI)

- Urgency bar visible on screen.
- “Game Over” message with restart button.
- “You win!” message upon completion, with replay option.
- Simple and humorous design.

## 11. Visual Style

- 2D cartoon-style graphics.
- Expressive and friendly character design.
- Simple environments: park, street, Lulu’s house.
- Simple tileset for fast development.

## 12. Sound

- Sound effects: bark, biscuit pickup, poop, fall, victory.
- Light and fun background music (optional).

## 13. Basic Technical Structure

- Main scene (`lulu_chaos_walk`)
- Player scene (`lulu`)
- Pickup scenes (`biscuit`)
- UI scenes (`hud`, `game_over`, `win`, `controls`, `menu`)
- Urgency bar and progression system

## 14. Project Goal

To create a simple and fun game in Godot that demonstrates:

- Character movement with animations
- Urgency system and item collection
- Collision detection
- Basic UI implementation

## 15. Future Improvements

- More levels with different paths and challenges.
- Additional power-ups (toilet paper, golden bones).
- Background music and extra sound effects.
- Random events (butterflies, fireworks).

## 16. Resources

- **Character assets:** Provided by Rubén
- **Lulu home:** [FREE Houses 2D]("https://styloo.itch.io/house-2d")
- **Font:** [dafont.com]("https://www.dafont.com/es/minecrafter.font")
- **Other sources:** [craftpix.net]("https://craftpix.net/freebies/nature-pixel-art-environment-free-assets-pack/")
