(window.webpackJsonp=window.webpackJsonp||[]).push([[23],{220:function(e,t,a){"use strict";a.r(t);var s=a(0),n=Object(s.a)({},(function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("ContentSlotsDistributor",{attrs:{"slot-key":e.$parent.slotKey}},[a("h1",{attrs:{id:"sharing"}},[a("a",{staticClass:"header-anchor",attrs:{href:"#sharing"}},[e._v("#")]),e._v(" Sharing")]),e._v(" "),a("p",[e._v("To share a song, there are four arguments that are needed:")]),e._v(" "),a("ul",[a("li",[a("code",[e._v("uint8_t uid")]),e._v(" - The ID of the song owner (current user).")]),e._v(" "),a("li",[a("code",[e._v("uint8_t sid")]),e._v(" - The ID of the user the song is being shared with.")]),e._v(" "),a("li",[a("code",[e._v("char *pin")]),e._v(" - The current users pin. This is used to generate the secret.")]),e._v(" "),a("li",[a("code",[e._v("struct metadata *metadata")]),e._v(" - A pointer to the song "),a("router-link",{attrs:{to:"/technical-reference/metadata.html"}},[e._v("metadata structure")]),e._v(".")],1)]),e._v(" "),a("div",{staticClass:"language-c extra-class"},[a("pre",{pre:!0,attrs:{class:"language-text"}},[a("code",[e._v("int shareSong(uint8_t uid, uint8_t sid, char * pin, struct metadata * meta) {}\n")])])]),a("p",[e._v("Sharing works by encrypting the song key, the key that decrypts the song, with the person receiving the songs public key. The first step to doing this is to hash the users pin passed through to the function with monocypher's BLAKE2b:")]),e._v(" "),a("div",{staticClass:"language-c extra-class"},[a("pre",{pre:!0,attrs:{class:"language-text"}},[a("code",[e._v("crypto_blake2b(hashed_pin, pin, strlen(pin)); \n")])])]),a("p",[e._v("This is then used to unlock the private key as follows:")]),e._v(" "),a("div",{staticClass:"language-c extra-class"},[a("pre",{pre:!0,attrs:{class:"language-text"}},[a("code",[e._v("crypto_unlock(pvt_key, hashed_pin, nonce, mac, enc_pvt_key, 32)\n")])])]),a("p",[e._v("Your private key is then used in combination with the song owners public key to decrypt the song. This is using monocypher's "),a("a",{attrs:{href:"https://monocypher.org/manual/key_exchange",target:"_blank",rel:"noopener noreferrer"}},[e._v("Crypto key Exchange"),a("OutboundLink")],1),e._v(".")]),e._v(" "),a("div",{staticClass:"language-c extra-class"},[a("pre",{pre:!0,attrs:{class:"language-text"}},[a("code",[e._v("crypto_key_exchange(shared_key, pvt_key, pub_key);\n")])])]),a("p",[e._v("After the sharedInfo is generated, we write it to the metadata for the shared user to access.")]),e._v(" "),a("p",[e._v("The next step is to generate the secret for the song and hash it with BLAKE2b. Generating secrets is explained in greater detail in the "),a("router-link",{attrs:{to:"/technical-reference/encryption.html#generating-secrets"}},[e._v("Secret Generation documentation")]),e._v(".")],1),e._v(" "),a("div",{staticClass:"language-c extra-class"},[a("pre",{pre:!0,attrs:{class:"language-text"}},[a("code",[e._v("secretFull = generateSecret(pin, meta);\ncrypto_blake2b(hash, secretFull, 160); \n")])])]),a("p",[e._v("Finally, all of this information is used to call monocypher's "),a("code",[e._v("crypto_lock")]),e._v(" function:")]),e._v(" "),a("div",{staticClass:"language-c extra-class"},[a("pre",{pre:!0,attrs:{class:"language-text"}},[a("code",[e._v("crypto_lock(meta->sharedInfo[sid-1] + 32, meta->sharedInfo[sid-1] , shared_key, nonceEnc, hash, 32 );\n")])])]),a("p",[e._v("To play a song shared with you, you need to first decrypt your private key with your pin and pinhash. Then, decrypt the encrypted song key with your private key and play the song. This is covered in greater detail in the "),a("router-link",{attrs:{to:"/technical-reference/playing.html"}},[e._v("Play Song documentation")]),e._v(".")],1)])}),[],!1,null,null,null);t.default=n.exports}}]);