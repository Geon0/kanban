ALTER TABLE KB_ITEM ADD(
	CONSTRAINT HRUSER_R_KBITEM FOREIGN KEY (USERID)
	REFERENCES HR_USER(USERID));
	
ALTER TABLE KB_ITEM_CARD ADD(
	CONSTRAINT KBITEM_C_CARD FOREIGN KEY (ITEMID)
	REFERENCES KB_ITEM(ITEMID) ON DELETE CASCADE);
	
ALTER TABLE KB_ITEM_CARD_FILE ADD(
	CONSTRAINT KBITEMCARD_C_FILE FOREIGN KEY (CARDID)
	REFERENCES KB_ITEM_CARD(CARDID) ON DELETE CASCADE);
	
ALTER TABLE KB_ITEM_CARD_OPN ADD(
	CONSTRAINT KBITEMCARD_C_OPN FOREIGN KEY (CARDID)
	REFERENCES KB_ITEM_CARD(CARDID) ON DELETE CASCADE);
	
ALTER TABLE KB_ITEM_BACKUP ADD(
	CONSTRAINT HRUSER_R_KBITEMBACKUP FOREIGN KEY (USERID)
	REFERENCES HR_USER(USERID));