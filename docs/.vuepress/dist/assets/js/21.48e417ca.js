(window.webpackJsonp=window.webpackJsonp||[]).push([[21],{225:function(e,t,a){"use strict";a.r(t);var r=a(0),n=Object(r.a)({},(function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("ContentSlotsDistributor",{attrs:{"slot-key":e.$parent.slotKey}},[a("h1",{attrs:{id:"playing"}},[a("a",{staticClass:"header-anchor",attrs:{href:"#playing"}},[e._v("#")]),e._v(" Playing")]),e._v(" "),a("p",[e._v("When playing a song, the first step is to determine if the song is owned by the current user, shared with the current user, or neither. This determines if the full song, shared song, or 30 second sample are played back to the user. The process is as follows:")]),e._v(" "),a("p",[a("img",{attrs:{src:"/playSong.png",alt:"Play Song Flowchart"}})]),e._v(" "),a("h2",{attrs:{id:"playing-full-song"}},[a("a",{staticClass:"header-anchor",attrs:{href:"#playing-full-song"}},[e._v("#")]),e._v(" Playing Full Song")]),e._v(" "),a("p",[e._v("To play the full song, there are three arguments that are needed:")]),e._v(" "),a("ul",[a("li",[a("code",[e._v("FILE *encFile")]),e._v(" - A pointer to the song file.")]),e._v(" "),a("li",[a("code",[e._v("struct metadata *meta")]),e._v(" - A pointer to the song "),a("router-link",{attrs:{to:"/technical-reference/metadata.html"}},[e._v("metadata structure")]),e._v(".")],1),e._v(" "),a("li",[a("code",[e._v("char *pin")]),e._v(" - The current users pin. This is used to generate the secret for decryption.")])]),e._v(" "),a("div",{staticClass:"language-c extra-class"},[a("pre",{pre:!0,attrs:{class:"language-text"}},[a("code",[e._v("uint8_t playFull(FILE *encFile, struct metadata *meta, char *pin) {\n\n  // Generate full secret\n  uint8_t *secret = generateSecret(pin, meta);\n\n  // Decrypt full song\n  return decryptFull(encFile, meta, secret);\n}\n")])])]),a("p",[e._v("First, we need to generate the secret key used to decrypt the song. For a detailed explanation on this process, refer to the "),a("router-link",{attrs:{to:"/technical-reference/encryption.html#generating-secrets"}},[e._v("Secret Generation documentation")]),e._v(".")],1),e._v(" "),a("p",[e._v("A pointer to this secret is then passed to the "),a("code",[e._v("decryptFull")]),e._v(" function, along with the file pointer and metadata pointer, which will decrypt the song.")]),e._v(" "),a("p",[e._v("The function returns a uint8_t, either 0 or 1, to indicate success or failure. This pass/fail code comes from the return of "),a("code",[e._v("decryptFull")]),e._v(".")]),e._v(" "),a("h3",{attrs:{id:"decrypting-a-full-song"}},[a("a",{staticClass:"header-anchor",attrs:{href:"#decrypting-a-full-song"}},[e._v("#")]),e._v(" Decrypting a full song")]),e._v(" "),a("div",{staticClass:"language-c extra-class"},[a("pre",{pre:!0,attrs:{class:"language-text"}},[a("code",[e._v("uint8_t decryptFull(FILE *encFile, struct metadata *meta, uint8_t *secret) {}\n")])])]),a("p",[e._v("The first step to decrypting a song is to hash the secret with BLAKE2b:")]),e._v(" "),a("div",{staticClass:"language-c extra-class"},[a("pre",{pre:!0,attrs:{class:"language-text"}},[a("code",[e._v("uint8_t hash[64] = {0};\ncrypto_blake2b(hash, secret, 160);\n")])])]),a("p",[e._v("We can then use this hash as the key for "),a("a",{attrs:{href:"https://monocypher.org/",target:"_blank",rel:"noopener noreferrer"}},[e._v("monocypher"),a("OutboundLink")],1),e._v("'s "),a("code",[e._v("crypto_unlock")]),e._v(" function to do the decryption:")]),e._v(" "),a("div",{staticClass:"language-c extra-class"},[a("pre",{pre:!0,attrs:{class:"language-text"}},[a("code",[e._v("crypto_unlock(buf_out, key, nonce, mac, buf_in, rlen)\n")])])]),a("h2",{attrs:{id:"playing-a-shared-song"}},[a("a",{staticClass:"header-anchor",attrs:{href:"#playing-a-shared-song"}},[e._v("#")]),e._v(" Playing a Shared Song")]),e._v(" "),a("p",[e._v("The "),a("code",[e._v("playShared")]),e._v(" song takes 4 arguments:")]),e._v(" "),a("ul",[a("li",[a("code",[e._v("FILE *encFile")]),e._v(" - A pointer to the song file.")]),e._v(" "),a("li",[a("code",[e._v("struct metadata *meta")]),e._v(" - A pointer to the song "),a("router-link",{attrs:{to:"/technical-reference/metadata.html"}},[e._v("metadata structure")]),e._v(".")],1),e._v(" "),a("li",[a("code",[e._v("uint8_t uid")]),e._v(" - The ID of the current user.")]),e._v(" "),a("li",[a("code",[e._v("char *pin")]),e._v(" - The current users pin. This is used to generate the secret for decryption.")])]),e._v(" "),a("div",{staticClass:"language-c extra-class"},[a("pre",{pre:!0,attrs:{class:"language-text"}},[a("code",[e._v("uint8_t playShared(FILE *encFile, struct metadata *meta, uint8_t uid, char *pin){}\n")])])]),a("p",[e._v("The first step to playing a shared song is to generate a hash of the users pin with BLAKE2b:")]),e._v(" "),a("div",{staticClass:"language-c extra-class"},[a("pre",{pre:!0,attrs:{class:"language-text"}},[a("code",[e._v("crypto_blake2b(pin_hash, pin, sizeof(pin));\n")])])]),a("p",[e._v("We can then get the encrypted private key from the "),a("code",[e._v("device_secrets")]),e._v(" file, and use the hashed pin to decrypt the private key:")]),e._v(" "),a("div",{staticClass:"language-c extra-class"},[a("pre",{pre:!0,attrs:{class:"language-text"}},[a("code",[e._v("crypto_unlock(pvt_key, pin_hash, nonce, mac, enc_pvt_key, 32);\n")])])]),a("p",[e._v("This private key allows us to use "),a("a",{attrs:{href:"https://monocypher.org/",target:"_blank",rel:"noopener noreferrer"}},[e._v("monocypher"),a("OutboundLink")],1),e._v("'s "),a("code",[e._v("crypto_key_exchange")]),e._v(" function to compute a shared key with the shared users secret key and the owners public key:")]),e._v(" "),a("div",{staticClass:"language-c extra-class"},[a("pre",{pre:!0,attrs:{class:"language-text"}},[a("code",[e._v("crypto_key_exchange(shared_key, pvt_key, pub_key);\n")])])]),a("p",[e._v("Next, we need to decrypt the sharedInfo section of the metadata at that user ID's index.")]),e._v(" "),a("div",{staticClass:"language-c extra-class"},[a("pre",{pre:!0,attrs:{class:"language-text"}},[a("code",[e._v("crypto_unlock(decrypted, shared_key, nonceDec, meta->sharedInfo[uid-1] + 32, meta->sharedInfo[uid-1], 32);\n")])])]),a("p",[e._v("Finally, we can use this information in "),a("a",{attrs:{href:"https://monocypher.org/",target:"_blank",rel:"noopener noreferrer"}},[e._v("monocypher"),a("OutboundLink")],1),e._v("'s "),a("code",[e._v("crypto_unlock")]),e._v(" function to finish off decrypting the song:")]),e._v(" "),a("div",{staticClass:"language-c extra-class"},[a("pre",{pre:!0,attrs:{class:"language-text"}},[a("code",[e._v("crypto_unlock(buf_out, key, nonce, mac, buf_in, rlen)\n")])])]),a("h2",{attrs:{id:"playing-30-second-sample"}},[a("a",{staticClass:"header-anchor",attrs:{href:"#playing-30-second-sample"}},[e._v("#")]),e._v(" Playing 30 Second Sample")]),e._v(" "),a("p",[e._v("Only two arguments are needed to play the 30 second sample of a song, as no pin is needed for decryption. There arguments needed are:")]),e._v(" "),a("ul",[a("li",[a("code",[e._v("FILE *encFile")]),e._v(" - A pointer to the song file.")]),e._v(" "),a("li",[a("code",[e._v("struct metadata *meta")]),e._v(" - A pointer to the song "),a("router-link",{attrs:{to:"/technical-reference/metadata.html"}},[e._v("metadata structure")]),e._v(".")],1)]),e._v(" "),a("div",{staticClass:"language-c extra-class"},[a("pre",{pre:!0,attrs:{class:"language-text"}},[a("code",[e._v("uint8_t play30(FILE *encFile, struct metadata *meta) {\n  // Generate 30 secret\n  uint8_t *secret30 = generate30Secret(meta);\n\n  // Decrypt 30 second sample\n  return decrypt30(encFile, meta, secret30);\n}\n")])])]),a("p",[e._v("First, we need to generate the secret key used to decrypt the sample. Generating secrets is explained in greater detail in the "),a("router-link",{attrs:{to:"/technical-reference/encryption.html#generating-secrets"}},[e._v("Secret Generation documentation")]),e._v(".")],1),e._v(" "),a("p",[e._v("A pointer to the 30 second secret is then passed to the "),a("code",[e._v("decrypt30")]),e._v(" function, along with the file pointer and metadata pointer, which will decrypt the 30 second sample.")]),e._v(" "),a("p",[e._v("The function returns the value of the "),a("code",[e._v("decrypt30")]),e._v(" call, which is a 0 for success, and 1 for failure.")]),e._v(" "),a("h3",{attrs:{id:"decrypting-30-second-sample"}},[a("a",{staticClass:"header-anchor",attrs:{href:"#decrypting-30-second-sample"}},[e._v("#")]),e._v(" Decrypting 30 second sample")]),e._v(" "),a("div",{staticClass:"language-c extra-class"},[a("pre",{pre:!0,attrs:{class:"language-text"}},[a("code",[e._v("uint8_t decrypt30(FILE *encFile, struct metadata *meta, uint8_t *secret30) {}\n")])])]),a("p",[e._v("The first step to decrypting the 30 second sample is to hash the 30 second secret with BLAKE2b:")]),e._v(" "),a("div",{staticClass:"language-c extra-class"},[a("pre",{pre:!0,attrs:{class:"language-text"}},[a("code",[e._v("uint8_t hash[64] = {0};\ncrypto_blake2b(hash, (const uint8_t *) secret30, strlen(secret30));\n")])])]),a("p",[e._v("We can then use this hash as the key for "),a("a",{attrs:{href:"https://monocypher.org/",target:"_blank",rel:"noopener noreferrer"}},[e._v("monocypher"),a("OutboundLink")],1),e._v("'s "),a("code",[e._v("crypto_unlock")]),e._v(" function to do the decryption:")]),e._v(" "),a("div",{staticClass:"language-c extra-class"},[a("pre",{pre:!0,attrs:{class:"language-text"}},[a("code",[e._v("crypto_unlock(buf_out, key, nonce, mac, buf_in, rlen)\n")])])])])}),[],!1,null,null,null);t.default=n.exports}}]);