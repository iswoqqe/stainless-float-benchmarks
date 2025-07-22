; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!195 () Bool)

(assert start!195)

(declare-fun b!189 () Bool)

(declare-datatypes ((Unit!5 0))(
  ( (Unit!6) )
))
(declare-datatypes ((ControlFlow!3 0))(
  ( (Return!2 (value!83 (_ FloatingPoint 11 53))) (Proceed!2 (value!84 Unit!5)) )
))
(declare-fun e!156 () ControlFlow!3)

(declare-fun x!86 () (_ FloatingPoint 11 53))

(assert (=> b!189 (= e!156 (Return!2 x!86))))

(declare-fun b!190 () Bool)

(declare-fun Unit!7 () Unit!5)

(assert (=> b!190 (= e!156 (Proceed!2 Unit!7))))

(declare-fun b!188 () Bool)

(declare-fun e!157 () Bool)

(declare-fun lt!189 () (_ FloatingPoint 11 53))

(assert (=> b!188 (= e!157 (and (fp.leq (fp #b1 #b01111111110 #b1001001000011111111100101110010010001110100010100111) x!86) (fp.leq x!86 (fp #b0 #b01111111110 #b1001001000011111111100101110010010001110100010100111)) (or (not (fp.leq (fp #b1 #b01111001010 #b0000000000000000000000000000000000000000000000000000) lt!189)) (not (fp.leq lt!189 (fp #b0 #b01111001010 #b0000000000000000000000000000000000000000000000000000))))))))

(assert (=> b!188 (= lt!189 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000))))

(declare-fun lt!191 () Unit!5)

(declare-fun Unit!8 () Unit!5)

(assert (=> b!188 (= lt!191 Unit!8)))

(declare-fun lt!190 () ControlFlow!3)

(declare-fun __kernel_sin!0 ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53) (_ BitVec 32)) (_ FloatingPoint 11 53))

(assert (=> b!188 (= (__kernel_sin!0 x!86 (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) #b00000000000000000000000000000000) (ite (is-Return!2 lt!190) (value!83 lt!190) (let ((z!38 (fp.mul roundNearestTiesToEven x!86 x!86))) (fp.add roundNearestTiesToEven x!86 (fp.mul roundNearestTiesToEven (fp.mul roundNearestTiesToEven z!38 x!86) (fp.add roundNearestTiesToEven (fp #b1 #b01111111100 #b0101010101010101010101010101010101010101010101001001) (fp.mul roundNearestTiesToEven z!38 (fp.add roundNearestTiesToEven (fp #b0 #b01111111000 #b0001000100010001000100010001000100001111100010100110) (fp.mul roundNearestTiesToEven z!38 (fp.add roundNearestTiesToEven (fp #b1 #b01111110010 #b1010000000011010000000011001110000010110000111010101) (fp.mul roundNearestTiesToEven z!38 (fp.add roundNearestTiesToEven (fp #b0 #b01111101100 #b0111000111011110001101010111101100011111111001111101) (fp.mul roundNearestTiesToEven z!38 (fp.add roundNearestTiesToEven (fp #b1 #b01111100101 #b1010111001011110011010001010001010111001110011101011) (fp.mul roundNearestTiesToEven z!38 (fp #b0 #b01111011110 #b0101110110010011101001011010110011111101010101111100))))))))))))))))))

(assert (=> b!188 (= lt!190 e!156)))

(declare-fun c!89 () Bool)

(declare-fun e!158 () Bool)

(assert (=> b!188 (= c!89 e!158)))

(declare-fun res!373 () Bool)

(assert (=> b!188 (=> (not res!373) (not e!158))))

(declare-fun __HI!0 ((_ FloatingPoint 11 53)) (_ BitVec 32))

(assert (=> b!188 (= res!373 (bvslt (bvand (__HI!0 x!86) #b01111111111111111111111111111111) #b00111110010000000000000000000000))))

(declare-fun b!191 () Bool)

(assert (=> b!191 (= e!158 (= (ite (fp.isNaN x!86) #b00000000000000000000000000000000 (ite (fp.gt x!86 ((_ to_fp 11 53) roundTowardZero #b01111111111111111111111111111111)) #b01111111111111111111111111111111 (ite (fp.lt x!86 ((_ to_fp 11 53) roundTowardZero #b10000000000000000000000000000000)) #b10000000000000000000000000000000 ((_ fp.to_sbv 32) roundTowardZero x!86)))) #b00000000000000000000000000000000))))

(declare-fun res!372 () Bool)

(assert (=> start!195 (=> (not res!372) (not e!157))))

(assert (=> start!195 (= res!372 (bvsle (bvand (__HI!0 x!86) #b01111111111111111111111111111111) #b00111111111010010010000111111011))))

(assert (=> start!195 e!157))

(assert (=> start!195 true))

(assert (= (and start!195 res!372) b!188))

(assert (= (and b!188 res!373) b!191))

(assert (= (and b!188 c!89) b!189))

(assert (= (and b!188 (not c!89)) b!190))

(declare-fun m!171 () Bool)

(assert (=> b!188 m!171))

(declare-fun m!173 () Bool)

(assert (=> b!188 m!173))

(assert (=> start!195 m!173))

(push 1)

(assert (not b!188))

(assert (not start!195))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

