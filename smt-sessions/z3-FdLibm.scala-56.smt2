; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!507 () Bool)

(assert start!507)

(declare-fun res!556 () Bool)

(declare-fun e!372 () Bool)

(assert (=> start!507 (=> (not res!556) (not e!372))))

(declare-fun x!199 () (_ FloatingPoint 11 53))

(assert (=> start!507 (= res!556 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!199) (not (fp.isInfinite x!199)) (not (fp.isNaN x!199))))))

(assert (=> start!507 e!372))

(assert (=> start!507 true))

(declare-fun b!483 () Bool)

(declare-fun e!373 () Bool)

(assert (=> b!483 (= e!372 e!373)))

(declare-fun res!555 () Bool)

(assert (=> b!483 (=> (not res!555) (not e!373))))

(declare-datatypes ((array!17 0))(
  ( (array!18 (arr!8 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!8 (_ BitVec 32))) )
))
(declare-datatypes ((tuple4!4 0))(
  ( (tuple4!5 (_1!36 (_ BitVec 32)) (_2!36 Bool) (_3!29 Bool) (_4!2 array!17)) )
))
(declare-fun lt!528 () tuple4!4)

(assert (=> b!483 (= res!555 (not (_3!29 lt!528)))))

(declare-fun lt!529 () (_ BitVec 32))

(declare-datatypes ((tuple2!14 0))(
  ( (tuple2!15 (_1!37 (_ BitVec 32)) (_2!37 array!17)) )
))
(declare-fun lt!530 () tuple2!14)

(declare-fun computeModulo!0 ((_ BitVec 32) array!17) tuple4!4)

(declare-fun timesTwoOverPi!0 ((_ BitVec 32) (_ BitVec 32) array!17) array!17)

(assert (=> b!483 (= lt!528 (computeModulo!0 lt!529 (timesTwoOverPi!0 lt!529 (_1!37 lt!530) (_2!37 lt!530))))))

(declare-fun splitInput!0 ((_ FloatingPoint 11 53)) tuple2!14)

(assert (=> b!483 (= lt!530 (splitInput!0 x!199))))

(assert (=> b!483 (= lt!529 #b00000000000000000000000000000110)))

(declare-fun b!484 () Bool)

(declare-fun e!371 () Bool)

(assert (=> b!484 (= e!373 e!371)))

(declare-fun res!554 () Bool)

(assert (=> b!484 (=> res!554 e!371)))

(declare-fun lt!527 () array!17)

(assert (=> b!484 (= res!554 (not (= (size!8 lt!527) #b00000000000000000000000000010100)))))

(declare-fun timesPiOverTwo!0 ((_ BitVec 32) array!17) array!17)

(assert (=> b!484 (= lt!527 (timesPiOverTwo!0 lt!529 (_4!2 lt!528)))))

(declare-fun b!485 () Bool)

(declare-fun fqInv!0 (array!17) Bool)

(assert (=> b!485 (= e!371 (not (fqInv!0 lt!527)))))

(assert (= (and start!507 res!556) b!483))

(assert (= (and b!483 res!555) b!484))

(assert (= (and b!484 (not res!554)) b!485))

(declare-fun m!513 () Bool)

(assert (=> b!483 m!513))

(assert (=> b!483 m!513))

(declare-fun m!515 () Bool)

(assert (=> b!483 m!515))

(declare-fun m!517 () Bool)

(assert (=> b!483 m!517))

(declare-fun m!519 () Bool)

(assert (=> b!484 m!519))

(declare-fun m!521 () Bool)

(assert (=> b!485 m!521))

(check-sat (not b!483) (not b!484) (not b!485))
(check-sat)
(get-model)

(declare-fun d!395 () Bool)

(declare-fun e!376 () Bool)

(assert (=> d!395 e!376))

(declare-fun res!559 () Bool)

(assert (=> d!395 (=> (not res!559) (not e!376))))

(declare-fun lt!533 () tuple4!4)

(assert (=> d!395 (= res!559 (and (bvsle #b00000000000000000000000000000000 (_1!36 lt!533)) (bvslt (_1!36 lt!533) #b00000000000000000000000000001000) (= (size!8 (_4!2 lt!533)) #b00000000000000000000000000010100)))))

(declare-fun choose!17 ((_ BitVec 32) array!17) tuple4!4)

(assert (=> d!395 (= lt!533 (choose!17 lt!529 (timesTwoOverPi!0 lt!529 (_1!37 lt!530) (_2!37 lt!530))))))

(assert (=> d!395 (and (bvsle #b00000000000000000000000000000010 lt!529) (bvslt lt!529 #b00000000000000000000000000010011))))

(assert (=> d!395 (= (computeModulo!0 lt!529 (timesTwoOverPi!0 lt!529 (_1!37 lt!530) (_2!37 lt!530))) lt!533)))

(declare-fun b!488 () Bool)

(declare-fun qqInv!0 (array!17) Bool)

(assert (=> b!488 (= e!376 (qqInv!0 (_4!2 lt!533)))))

(assert (= (and d!395 res!559) b!488))

(assert (=> d!395 m!513))

(declare-fun m!523 () Bool)

(assert (=> d!395 m!523))

(declare-fun m!525 () Bool)

(assert (=> b!488 m!525))

(assert (=> b!483 d!395))

(declare-fun d!397 () Bool)

(declare-fun lt!536 () array!17)

(declare-fun qInv!0 (array!17) Bool)

(assert (=> d!397 (qInv!0 lt!536)))

(declare-fun choose!15 ((_ BitVec 32) (_ BitVec 32) array!17) array!17)

(assert (=> d!397 (= lt!536 (choose!15 lt!529 (_1!37 lt!530) (_2!37 lt!530)))))

(assert (=> d!397 (and (bvsle #b00000000000000000000000000000000 lt!529) (bvsle lt!529 #b00000000000000000000000000001111))))

(assert (=> d!397 (= (timesTwoOverPi!0 lt!529 (_1!37 lt!530) (_2!37 lt!530)) lt!536)))

(declare-fun bs!147 () Bool)

(assert (= bs!147 d!397))

(declare-fun m!527 () Bool)

(assert (=> bs!147 m!527))

(declare-fun m!529 () Bool)

(assert (=> bs!147 m!529))

(assert (=> b!483 d!397))

(declare-fun d!399 () Bool)

(declare-fun e!380 () Bool)

(assert (=> d!399 e!380))

(declare-fun res!562 () Bool)

(assert (=> d!399 (=> (not res!562) (not e!380))))

(declare-fun lt!539 () tuple2!14)

(assert (=> d!399 (= res!562 (and (bvsle #b00000000000000000000000000011000 (_1!37 lt!539)) (bvsle (_1!37 lt!539) #b00000000000000000000001111110000) (= (bvsrem (_1!37 lt!539) #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(declare-fun choose!11 ((_ FloatingPoint 11 53)) tuple2!14)

(assert (=> d!399 (= lt!539 (choose!11 x!199))))

(assert (=> d!399 (and (fp.leq (fp #b0 #b01111111111 #b0000000000000000000000000000000000000000000000000000) x!199) (not (fp.isInfinite x!199)) (not (fp.isNaN x!199)))))

(assert (=> d!399 (= (splitInput!0 x!199) lt!539)))

(declare-fun b!491 () Bool)

(declare-fun xxInv!0 (array!17) Bool)

(assert (=> b!491 (= e!380 (xxInv!0 (_2!37 lt!539)))))

(assert (= (and d!399 res!562) b!491))

(declare-fun m!531 () Bool)

(assert (=> d!399 m!531))

(declare-fun m!533 () Bool)

(assert (=> b!491 m!533))

(assert (=> b!483 d!399))

(declare-fun d!401 () Bool)

(declare-fun e!383 () Bool)

(assert (=> d!401 e!383))

(declare-fun res!565 () Bool)

(assert (=> d!401 (=> (not res!565) (not e!383))))

(declare-fun lt!542 () array!17)

(assert (=> d!401 (= res!565 (= (size!8 lt!542) #b00000000000000000000000000010100))))

(declare-fun choose!16 ((_ BitVec 32) array!17) array!17)

(assert (=> d!401 (= lt!542 (choose!16 lt!529 (_4!2 lt!528)))))

(assert (=> d!401 (and (bvsle #b00000000000000000000000000000000 lt!529) (bvslt lt!529 #b00000000000000000000000000010100))))

(assert (=> d!401 (= (timesPiOverTwo!0 lt!529 (_4!2 lt!528)) lt!542)))

(declare-fun b!494 () Bool)

(assert (=> b!494 (= e!383 (fqInv!0 lt!542))))

(assert (= (and d!401 res!565) b!494))

(declare-fun m!535 () Bool)

(assert (=> d!401 m!535))

(declare-fun m!537 () Bool)

(assert (=> b!494 m!537))

(assert (=> b!484 d!401))

(declare-fun d!403 () Bool)

(assert (=> d!403 (= (fqInv!0 lt!527) (and (= (size!8 lt!527) #b00000000000000000000000000010100) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!8 lt!527) #b00000000000000000000000000000000)) (fp.leq (select (arr!8 lt!527) #b00000000000000000000000000000000) (fp #b0 #b01111111110 #b1001001000011111101100001101101111000000100110000000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!8 lt!527) #b00000000000000000000000000000001)) (fp.leq (select (arr!8 lt!527) #b00000000000000000000000000000001) (fp #b0 #b01111101000 #b0001101000100000100011001001010011001110101111100000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!8 lt!527) #b00000000000000000000000000000010)) (fp.leq (select (arr!8 lt!527) #b00000000000000000000000000000010) (fp #b0 #b01111010000 #b1100110001001011101000011101001010011001111110100000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!8 lt!527) #b00000000000000000000000000000011)) (fp.leq (select (arr!8 lt!527) #b00000000000000000000000000000011) (fp #b0 #b01110111001 #b0100100001001011101001000100011000011011101101111000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!8 lt!527) #b00000000000000000000000000000100)) (fp.leq (select (arr!8 lt!527) #b00000000000000000000000000000100) (fp #b0 #b01110100001 #b1001101000011011010011011100010110101101101010011000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!8 lt!527) #b00000000000000000000000000000101)) (fp.leq (select (arr!8 lt!527) #b00000000000000000000000000000101) (fp #b0 #b01110001001 #b1011101001010010010101001100010110101101101010011000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!8 lt!527) #b00000000000000000000000000000110)) (fp.leq (select (arr!8 lt!527) #b00000000000000000000000000000110) (fp #b0 #b01101110001 #b1011101001010010010101001100010110101101101010011000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!8 lt!527) #b00000000000000000000000000000111)) (fp.leq (select (arr!8 lt!527) #b00000000000000000000000000000111) (fp #b0 #b01101011001 #b1011101001010010010101001100010110101101101010011000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!8 lt!527) #b00000000000000000000000000001000)) (fp.leq (select (arr!8 lt!527) #b00000000000000000000000000001000) (fp #b0 #b01101000001 #b1011101001010010010101001100010110101101101010011000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!8 lt!527) #b00000000000000000000000000001001)) (fp.leq (select (arr!8 lt!527) #b00000000000000000000000000001001) (fp #b0 #b01100101001 #b1011101001010010010101001100010110101101101010011000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!8 lt!527) #b00000000000000000000000000001010)) (fp.leq (select (arr!8 lt!527) #b00000000000000000000000000001010) (fp #b0 #b01100010001 #b1011101001010010010101001100010110101101101010011000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!8 lt!527) #b00000000000000000000000000001011)) (fp.leq (select (arr!8 lt!527) #b00000000000000000000000000001011) (fp #b0 #b01011111001 #b1011101001010010010101001100010110101101101010011000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!8 lt!527) #b00000000000000000000000000001100)) (fp.leq (select (arr!8 lt!527) #b00000000000000000000000000001100) (fp #b0 #b01011100001 #b1011101001010010010101001100010110101101101010011000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!8 lt!527) #b00000000000000000000000000001101)) (fp.leq (select (arr!8 lt!527) #b00000000000000000000000000001101) (fp #b0 #b01011001001 #b1011101001010010010101001100010110101101101010011000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!8 lt!527) #b00000000000000000000000000001110)) (fp.leq (select (arr!8 lt!527) #b00000000000000000000000000001110) (fp #b0 #b01010110001 #b1011101001010010010101001100010110101101101010011000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!8 lt!527) #b00000000000000000000000000001111)) (fp.leq (select (arr!8 lt!527) #b00000000000000000000000000001111) (fp #b0 #b01010011001 #b1011101001010010010101001100010110101101101010011000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!8 lt!527) #b00000000000000000000000000010000)) (fp.leq (select (arr!8 lt!527) #b00000000000000000000000000010000) (fp #b0 #b01010000001 #b1011101001010010010101001100010110101101101010011000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!8 lt!527) #b00000000000000000000000000010001)) (fp.leq (select (arr!8 lt!527) #b00000000000000000000000000010001) (fp #b0 #b01001101001 #b1011101001010010010101001100010110101101101010011000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!8 lt!527) #b00000000000000000000000000010010)) (fp.leq (select (arr!8 lt!527) #b00000000000000000000000000010010) (fp #b0 #b01001010001 #b1011101001010010010101001100010110101101101010011000)) (fp.leq (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000) (select (arr!8 lt!527) #b00000000000000000000000000010011)) (fp.leq (select (arr!8 lt!527) #b00000000000000000000000000010011) (fp #b0 #b01000111001 #b1011101001010010010101001100010110101101101010011000))))))

(declare-fun bs!148 () Bool)

(assert (= bs!148 d!403))

(declare-fun m!539 () Bool)

(assert (=> bs!148 m!539))

(declare-fun m!541 () Bool)

(assert (=> bs!148 m!541))

(declare-fun m!543 () Bool)

(assert (=> bs!148 m!543))

(declare-fun m!545 () Bool)

(assert (=> bs!148 m!545))

(declare-fun m!547 () Bool)

(assert (=> bs!148 m!547))

(declare-fun m!549 () Bool)

(assert (=> bs!148 m!549))

(declare-fun m!551 () Bool)

(assert (=> bs!148 m!551))

(declare-fun m!553 () Bool)

(assert (=> bs!148 m!553))

(declare-fun m!555 () Bool)

(assert (=> bs!148 m!555))

(declare-fun m!557 () Bool)

(assert (=> bs!148 m!557))

(declare-fun m!559 () Bool)

(assert (=> bs!148 m!559))

(declare-fun m!561 () Bool)

(assert (=> bs!148 m!561))

(declare-fun m!563 () Bool)

(assert (=> bs!148 m!563))

(declare-fun m!565 () Bool)

(assert (=> bs!148 m!565))

(declare-fun m!567 () Bool)

(assert (=> bs!148 m!567))

(declare-fun m!569 () Bool)

(assert (=> bs!148 m!569))

(declare-fun m!571 () Bool)

(assert (=> bs!148 m!571))

(declare-fun m!573 () Bool)

(assert (=> bs!148 m!573))

(declare-fun m!575 () Bool)

(assert (=> bs!148 m!575))

(declare-fun m!577 () Bool)

(assert (=> bs!148 m!577))

(assert (=> b!485 d!403))

(check-sat (not d!395) (not b!488) (not d!401) (not b!491) (not d!397) (not d!399) (not b!494))
(check-sat)
