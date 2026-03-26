# Lulu: The Chaos Walk - GDD

## 1. General Information

- **Game Name:** Lulu: The Chaos Walk
- **Genre:** 2D Platformer / Arcade
- **Platform:** PC
- **Game Engine:** Godot Engine
- **Estimated Playtime:** 1–2 minutes per level

## 2. Game Concept

The player controls **Lulu**, a mischievous dog who has escaped from home.  
The objective is to **reach home without pooping**, while collecting bones that help Lulu stay in control.

The game combines platformer mechanics with a humorous urgency system that forces the player to make quick decisions, resulting in short, fun, and replayable sessions.

## 3. Core Mechanics

- Side-scrolling 2D movement (walk, run, jump).
- An **urgency bar** that represents Lulu’s need to poop; if it fills up, the player loses.
- Bones scattered throughout the level that reduce the urgency bar.
- Obstacles that slow Lulu down or increase urgency (puddles, cats, cars).
- End goal = Lulu’s house (victory).

## 4. Controls

| Action     | Key / Input     | Notes                                      |
|------------|----------------|--------------------------------------------|
| Walk       | ← →            | Walking animation                          |
| Run        | Shift + ← →    | Urgency bar increases faster               |
| Jump       | ↑ / Space      | Jump over obstacles                        |
| Sit        | S              | Pauses the game / urgency timer            |
| Bark       | L              | Decorative / interact with some objects    |
| Idle       | Automatic      | When no input is given                     |
| Poop       | Automatic      | When urgency bar is full → Game Over       |

## 5. Character

- Lulu, the main playable dog.
- Animations: idle, walk, run, jump, sit, bark, poop.
- Active collision for obstacles and pickups.
- Exaggerated expressions to reflect urgency.

## 6. Obstacles

- Static obstacles: puddles, benches, small trees.
- Moving obstacles: cats, cars.
- On collision:
  - Lulu is slowed down, or
  - Urgency bar increases.
- Obstacles are removed automatically when leaving the screen.

## 7. Pickups

- **Bones:** reduce the urgency bar.
- **Toilet paper (optional):** greatly reduces urgency.
- Strategically placed to create decision-making moments.

## 8. Progression and Feedback System

- The player progresses by moving through the level until reaching Lulu’s house.
- The **urgency bar** indicates how close Lulu is to losing; if it fills up, the game ends.
- Collecting **bones** reduces urgency, providing positive feedback.
- **Obstacles** (puddles, cats, cars) increase urgency or slow Lulu down, creating pressure.
- There is no numeric score; the main goal is to **survive and reach the end of the level**.

## 9. Defeat Conditions

- Urgency bar fills up → Lulu poops → Game Over.
- Falling into gaps → Game Over.
- A restart button appears after losing.

## 10. User Interface (UI)

- Urgency bar visible on screen.
- Bone counter.
- “Game Over” message with restart button.
- “You made it home!” message upon completion, with replay option.
- Simple and humorous design.

## 11. Visual Style

- 2D cartoon-style graphics.
- Expressive and friendly character design.
- Simple environments: park, street, Lulu’s house (to be developed).
- Simple tileset for fast development.

## 12. Sound

- Sound effects: bark, bone pickup, poop, fall, victory.
- Light and fun background music (optional).

## 13. Basic Technical Structure

- Main scene (`lulu_paseo`)
- Player scene (`lulu`)
- Obstacle scenes (`charco`, `gato`, `coche`)
- Pickup scenes (`hueso`, `papel_higienico`)
- UI scenes (`hud`, `game_over`, `victoria`)
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
