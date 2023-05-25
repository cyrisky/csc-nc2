//
//  ChatResponses.swift
//  CSC
//
//  Created by Cris on 22/05/23.
//

import Foundation
import CoreML

func getChatResponses(message: String) -> String {
    let tempMessage = message.lowercased()
    let randomSadness = sadness.randomElement()!
    let randomJoy = joy.randomElement()!
    let randomAnger = anger.randomElement()!
    let randomFear = fear.randomElement()!
    let randomSurprise = surprise.randomElement()!
    let randomLove = love.randomElement()!
    
    //Chat responses based on classification
    if tempMessage.contains("sadness") {
        return randomSadness
    } else if tempMessage.contains("joy") {
        return randomJoy
    } else if tempMessage.contains("anger") {
        return randomAnger
    } else if tempMessage.contains("love") {
        return randomLove
    } else if tempMessage.contains("surprise") {
        return randomSurprise
    } else if tempMessage.contains("fear") {
        return randomFear
    } else {
        return "Okay, what's next?"
    }
}

let sadness = [
    "I'm here for you, sending you virtual hugs in this difficult time of sadness.",
    "I understand that you're feeling sad. Take your time to process your emotions, and remember that you're not alone.",
    "In moments of sadness, it's important to be kind to yourself. Allow yourself to grieve and heal.",
    "I'm sorry to hear that you're feeling sad. If you need someone to talk to, I'm here to listen.",
    "Sadness can be overwhelming, but remember that brighter days will come. Hold onto hope.",
    "During moments of sadness, it's okay to lean on others for support. Reach out to your loved ones.",
    "Sending you gentle thoughts of comfort and understanding as you navigate through this sadness.",
    "Sadness is a natural part of the human experience. Allow yourself to feel it fully and honor your emotions.",
    "Remember that you are strong, even in moments of sadness. Give yourself permission to heal and grow.",
    "During times of sadness, self-care is crucial. Be gentle with yourself and engage in activities that bring you comfort.",
    "I'm here to offer you a listening ear and a shoulder to lean on. You don't have to face this sadness alone.",
    "Sadness can be heavy, but remember that you have the strength to carry it. Take it one day at a time.",
    "It's okay to cry and release your emotions. Tears can be a healing balm for the soul.",
    "I'm sending you a virtual support system of understanding and empathy as you navigate through this sadness.",
    "During moments of sadness, it's important to prioritize self-compassion. Be gentle with yourself, just as you would with a dear friend.",
    "Sadness can make us feel isolated, but remember that there are people who care about you and want to help.",
    "In the midst of sadness, hold onto the glimmers of hope and know that this feeling won't last forever.",
    "You're not alone in your sadness. Reach out to others for support and let them be a source of comfort for you.",
    "It takes strength to acknowledge and process sadness. You're doing the best you can, and that's admirable.",
    "Remember that healing is a journey, and it's okay to take small steps forward. I believe in your resilience and ability to find joy again."
]

let joy = [
    "Oh joy, you're happier than a kid in a candy store!",
    "Well, look at you, spreading joy like confetti!",
    "You're beaming with so much joy, you could light up a fireworks display!",
    "Happiness alert! I'm detecting off-the-charts joy levels in your vibe!",
    "Congratulations, you've unlocked the secret level of pure joy in life!",
    "Joy-meter: 100% and skyrocketing! Keep up the awesome vibes!",
    "Joy overload detected! Prepare for spontaneous bouts of laughter and contagious smiles!",
    "Warning: Extreme joy levels detected. Proceed with spontaneous dancing and celebratory high-fives!",
    "Who needs a joy pill when you radiate happiness like a human sunshine generator!",
    "Joy level: maximum capacity! Brace yourself for an epic joy ride!",
    "Calling all joy ambassadors! You're doing a fantastic job at spreading the happy vibes!",
    "Joyful superstar in action! Keep rocking that positive energy, my friend!",
    "Attention, joy connoisseur! Your joy game is on point. Share the secret of your happiness!",
    "Joyful greetings! You're beaming brighter than a rainbow on a sunny day!",
    "Joy alert! I'm sensing an outbreak of giggles and happy dances in your vicinity!",
    "Hold on tight, because your joy levels are about to reach intergalactic proportions!",
    "Joy-o-meter is off the charts! The world needs more of your contagious laughter!",
    "Warning: Excessive joy detected. Prepare for spontaneous bursts of song and dance!",
    "Congratulations, you're joyfully winning at life's happy game! Keep up the good vibes!",
    "Joy explosion imminent! Buckle up and enjoy the joy ride!"
]

let anger = [
    "I can see that you're feeling angry. It's important to acknowledge and validate your emotions.",
    "Anger can be overwhelming. Take a deep breath and give yourself a moment to calm down.",
    "I understand that anger can arise from certain situations. If you'd like, you can share what's been bothering you.",
    "Anger is a natural response, but it's important to find healthy ways to express and manage it.",
    "It's okay to feel angry. Remember to take care of yourself and find positive outlets for your emotions.",
    "I'm here to listen if you need to vent or talk about what's causing your anger. Sometimes sharing can bring relief.",
    "Anger can be a powerful emotion. Take some time to reflect on what it's trying to tell you.",
    "Deep breaths can help center your emotions and provide clarity in moments of anger.",
    "Remember that your feelings are valid, but it's also important to consider the perspective of others involved.",
    "Finding healthy ways to channel your anger can lead to positive outcomes. Let's explore some strategies together.",
    "Anger can cloud our judgment. Take a step back and try to evaluate the situation from a more balanced perspective.",
    "I understand that anger can be frustrating. Is there something specific you'd like assistance with?",
    "Acknowledging your anger is the first step towards finding productive ways to address the underlying issues.",
    "It's important to express your anger constructively, while also being mindful of the impact it may have on others.",
    "Anger can be a signal that something needs to change. Let's explore potential solutions together.",
    "While anger is a normal emotion, it's important to be mindful of how we communicate our feelings to others.",
    "Finding healthy coping mechanisms can help you navigate anger in a more constructive manner. What strategies have you tried?",
    "Remember that reacting with empathy and understanding can help diffuse anger and promote better communication.",
    "Taking the time to understand the root causes of your anger can lead to more effective problem-solving.",
    "Anger is an opportunity for personal growth and self-reflection. Let's explore ways to transform your anger into positive change."
]

let surprise = [
    "Well, well, well, look who's caught off guard! What's the story behind this surprising turn of events?",
    "Hold the phone, I did not see that coming! Can you fill me in on the details?",
    "Surprise, surprise! Spill the beans, what led to this unexpected twist?",
    "Wait a minute, I need to catch my breath. How did you stumble upon such a surprising revelation?",
    "You've managed to leave me speechless with this unexpected surprise. Give me the inside scoop!",
    "Oh my, color me surprised! I'm dying to know more about this delightful plot twist.",
    "Stop the presses! This surprising news has piqued my curiosity. Care to share the backstory?",
    "Hold your horses, you've left me in awe with this unexpected turn of events. Share the juicy details!",
    "Knock me over with a feather! How did this unexpected surprise manage to unfold?",
    "Well, well, well, what do we have here? This surprise has me on the edge of my seat. Tell me everything!",
    "Holy moly, talk about a jaw-dropping surprise! My curiosity is officially piqued. Spill the beans!",
    "Well, butter my biscuit! I'm all ears and ready to be amazed. What's the story behind this surprising development?",
    "Who would've thought? This unexpected surprise has me positively intrigued. Share the deets!",
    "Blow me down! I'm positively astounded by this surprise. Care to enlighten me on the details?",
    "Hold onto your hats, folks! This surprise has caught me off guard. I'm itching to know more!",
    "Well, I'll be darned! This unexpected surprise has me scratching my head. Fill me in, won't you?",
    "Oh my stars, I'm positively flabbergasted by this surprising revelation! Do tell, what led to this twist?",
    "Oh, the plot thickens! This surprise has my curiosity in overdrive. Lay it on me, I'm all ears!",
    "Stop the presses! This unexpected surprise has my attention. Spill the beans and satisfy my curiosity!",
    "Surprise me once, shame on you. Surprise me twice, and I'm all ears! What's the scoop behind this unexpected turn of events?"
]

let love = [
    "Love is a beautiful tapestry woven with threads of tenderness and understanding.",
    "Ah, love, the purest language of the heart. Embrace its warmth and let it guide your actions.",
    "In the embrace of love, we find a sanctuary where we are accepted and cherished just as we are.",
    "Love is a gentle force that has the power to heal wounds and mend broken hearts.",
    "There's something extraordinary about the way love can make even the simplest moments feel extraordinary.",
    "Love is the silent whisper that says, 'You matter.' It has the power to brighten someone's day.",
    "In the vast ocean of life, love is the anchor that keeps us grounded and gives us a sense of belonging.",
    "Love is the gift we give freely, without expecting anything in return. Its beauty lies in its selflessness.",
    "Love is a reflection of our shared humanity, reminding us that we are all connected by the threads of compassion.",
    "In the presence of love, we find the courage to be vulnerable, to reveal our true selves without fear of judgment.",
    "Love has the power to transform ordinary moments into extraordinary memories that last a lifetime.",
    "Love teaches us empathy, kindness, and forgiveness. It is a constant reminder of the goodness within us.",
    "Love is the silent strength that carries us through life's challenges, giving us the resilience to overcome obstacles.",
    "When love blossoms, it becomes a beacon of hope, shining brightly even in the darkest of times.",
    "Love is a sacred dance between two souls, where each step is taken with trust and open hearts.",
    "The beauty of love lies in its simplicity, in the small gestures and genuine acts of kindness that create profound connections.",
    "Love is the greatest gift we can offer one another. It requires vulnerability, but the rewards are immeasurable.",
    "In a world that can sometimes feel cold and distant, love is the warmth that melts away our fears and brings us closer.",
    "Love is the language that transcends words, allowing us to communicate the deepest parts of our being.",
    "Embrace the power of love, for it has the ability to transform lives and create a more compassionate world."
]

let fear = [
    "I understand that you're feeling afraid. Take a deep breath and know that you're not alone.",
    "Fear is a natural response, but remember that you have the strength and resilience to overcome it.",
    "In moments of fear, it's important to be kind to yourself. Take small steps forward and celebrate each milestone.",
    "I'm here to support you through this fear. Remember, you are capable of facing and conquering it.",
    "Fear may feel overwhelming, but it doesn't define you. You have the power to rise above it and find courage within.",
    "Take comfort in knowing that fear is temporary. Focus on your inner strength and trust in your ability to overcome.",
    "Fear can be a guide, showing you areas where growth and personal development are possible. Embrace the opportunity for transformation.",
    "Remember, fear is just a feeling. It doesn't have the power to control your actions or define your future.",
    "When fear arises, remind yourself of past challenges you've overcome. You possess the resilience to face this fear too.",
    "Don't let fear hold you back from pursuing your dreams. Believe in yourself and take small steps towards your goals.",
    "Fear is a part of being human, and it often signals that something meaningful is at stake. Trust yourself and embrace the journey.",
    "You are stronger than you realize, even in the face of fear. Let your inner courage guide you forward.",
    "Fear can be a stepping stone to growth and new possibilities. Embrace it as an opportunity for personal expansion.",
    "When fear arises, take a moment to ground yourself. Connect with your inner resilience and find solace in your inner calm.",
    "Remember, fear is just a passing emotion. It doesn't have the power to define your worth or limit your potential.",
    "Lean on your support system when fear arises. Share your concerns with trusted individuals who can provide guidance and reassurance.",
    "Focus on what you can control in the face of fear. Take small, actionable steps towards your goals and watch your fear diminish.",
    "Fear is a normal response to the unknown, but it shouldn't stop you from exploring new possibilities. Embrace the journey with an open mind.",
    "Trust in yourself and your ability to navigate through fear. You've faced challenges before and emerged stronger. This is no different.",
    "When fear arises, visualize a positive outcome and affirm your ability to overcome. Your inner strength will guide you towards a brighter path."
]
