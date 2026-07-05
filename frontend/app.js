// =============================
// EcoLens AI
// =============================

console.log("🌿 EcoLens AI Started");

// Buttons
const uploadBtn = document.getElementById("uploadBtn");
const scanBtn = document.getElementById("scanBtn");

// Image
const imageInput = document.getElementById("imageInput");
const previewImage = document.getElementById("previewImage");

// Result Fields
const wasteType = document.getElementById("wasteType");
const type = document.getElementById("type");
const recyclable = document.getElementById("recyclable");
const bin = document.getElementById("bin");
const time = document.getElementById("time");
const impact = document.getElementById("impact");
const reuse = document.getElementById("reuse");
const tip = document.getElementById("tip");

let uploadedFile = null;

// =============================
// Upload Image
// =============================

uploadBtn.addEventListener("click", () => {
    imageInput.click();
});

// =============================
// Preview Image
// =============================

imageInput.addEventListener("change", (e) => {

    uploadedFile = e.target.files[0];

    if (!uploadedFile) return;

    previewImage.src = URL.createObjectURL(uploadedFile);
    previewImage.style.display = "block";

});

// =============================
// Analyze Waste
// =============================

scanBtn.addEventListener("click",()=>{

    if(!uploadedFile){

        alert("Upload an image first!");

        return;

    }

    scanBtn.innerHTML="🤖 Analyzing...";

    scanBtn.disabled=true;

    setTimeout(()=>{

        scanBtn.disabled=false;

        scanBtn.innerHTML="Analyze Waste";

        wasteType.innerHTML="Plastic Bottle";

        type.innerHTML="PET Plastic";

        ecoScore.innerHTML="94 / 100";

        progressBar.style.width="94%";

        recyclable.innerHTML="✅ Yes";

        confidence.innerHTML="98%";

        bin.innerHTML="Blue Bin";

        trees.innerHTML="0.8";

        co2.innerHTML="1.4 kg";

        reuse.innerHTML="Flower Vase, Pen Holder";

        tip.innerHTML="Wash before recycling.";

    },2000);

});

// =============================
// Navbar Shadow
// =============================

window.addEventListener("scroll",()=>{

    const nav=document.querySelector("nav");

    if(window.scrollY>30){

        nav.style.boxShadow="0 10px 20px rgba(0,0,0,.15)";

    }

    else{

        nav.style.boxShadow="none";

    }

});

// =============================
// Card Hover Animation
// =============================

const cards=document.querySelectorAll(".card");

cards.forEach(card=>{

    card.addEventListener("mouseenter",()=>{

        card.style.transform="translateY(-10px)";

    });

    card.addEventListener("mouseleave",()=>{

        card.style.transform="translateY(0px)";

    });

});

// =============================
// Welcome Message
// =============================

window.onload=()=>{

    console.log("Welcome to EcoLens AI 🌿");

};