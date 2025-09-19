DecodeArrowMovementRLE_::
        ld a, [hli]
        cp $ff
        ret z ; no match in the list
        cp b
        jr nz, .nextArrowMovementTileEntry1
        ld a, [hli]
        cp c
        jr nz, .nextArrowMovementTileEntry2
        ld a, [hli]
        ld d, [hl]
        ld e, a
        ld hl, wSimulatedJoypadStatesEnd
        call DecodeRLEList_
        dec a
        ld [wSimulatedJoypadStatesIndex], a
        ret
.nextArrowMovementTileEntry1
        inc hl
.nextArrowMovementTileEntry2
        inc hl
        inc hl
        jr DecodeArrowMovementRLE_

DecodeRLEList_::
        xor a
        ld [wRLEByteCount], a     ; count written bytes here
.listLoop
        ld a, [de]
        cp $ff
        jr z, .endOfList
        ldh [hRLEByteValue], a ; store byte value to be written
        inc de
        ld a, [de]
        ld b, $0
        ld c, a                      ; number of bytes to be written
        ld a, [wRLEByteCount]
        add c
        ld [wRLEByteCount], a     ; update total number of written bytes
        ldh a, [hRLEByteValue]
        call FillMemory              ; write a c-times to output
        inc de
        jr .listLoop
.endOfList
        ld a, $ff
        ld [hl], a                   ; write final $ff
        ld a, [wRLEByteCount]
        inc a                        ; include sentinel in counting
        ret

SetSpriteMovementBytesToFE_::
        push hl
        call GetSpriteMovementByte1Pointer_
        ld [hl], $fe
        call GetSpriteMovementByte2Pointer_
        ldh a, [hSpriteMovementByte2]
        ld [hl], a
        pop hl
        ret

SetSpriteMovementBytesToFF_::
        push hl
        call GetSpriteMovementByte1Pointer_
        ld [hl], STAY
        call GetSpriteMovementByte2Pointer_
        ld [hl], NONE
        pop hl
        ret

GetSpriteMovementByte1Pointer_::
        ld h, HIGH(wSpriteStateData2)
        ldh a, [hSpriteIndex]
        swap a
        add 6
        ld l, a
        ret

GetSpriteMovementByte2Pointer_::
        push de
        ld hl, wMapSpriteData
        ldh a, [hSpriteIndex]
        dec a
        add a
        ld d, 0
        ld e, a
        add hl, de
        pop de
        ret
