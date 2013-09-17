require 'spec_helper'

describe "Static pages" do
    
    describe "Home page" do
        
        it "should have the content 'ZapDates'" do
            visit '/static_pages/home'
            expect(page).to have_content('ZapDates')
        end
        
        it "should have the base title" do
            visit '/static_pages/home'
            expect(page).to have_title("ZapDates")
        end
        
        it "should not have a custom page title" do
            visit '/static_pages/home'
            expect(page).not_to have_title('| Home')
        end
    end
    
    describe "Help page" do
        it "should have the content 'ZapDates'" do
            visit '/static_pages/help'
            expect(page).to have_content('ZapDates')
        end
        
        it "should have the base title" do
            visit '/static_pages/help'
            expect(page).to have_title("ZapDates")
        end
        
        it "should not have a custom page title" do
            visit '/static_pages/help'
            expect(page).not_to have_title('| Help')
        end
    end
    
    describe "About page" do
        
        it "should have the content 'ZapDates'" do
            visit '/static_pages/about'
            expect(page).to have_content('ZapDates')
        end
        
        it "should have the base title" do
            visit '/static_pages/about'
            expect(page).to have_title("ZapDates")
        end
        
        it "should not have a custom page title" do
            visit '/static_pages/about'
            expect(page).not_to have_title('| About')
        end
    end
end